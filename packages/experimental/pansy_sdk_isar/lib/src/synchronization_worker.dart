import 'dart:async';
import 'dart:typed_data';

import 'package:isar/isar.dart' hide IsarCollection;
import 'package:pansy_sdk/pansy_sdk.dart';
import 'package:pansy_sdk_isar/src/applied_update.dart';
import 'package:pansy_sdk_isar/src/undelivered_update.dart';
import 'package:pansy_sdk_isar/src/vault_database.dart';
import 'package:uuid/uuid.dart';

import 'package:pansy_sdk_protocols/pansy_sdk_protocols.dart';

final uuid = Uuid();

class SynchronizationWorker {
  SynchronizationWorker(this._database, this._dataService);

  static const int _maxUpdateListSize = 100;

  final VaultDatabase _database;
  final ManagedDataService _dataService;

  // Waiting for initialization
  // ignore: avoid-late-keyword
  late IsarDatabaseMetadata _databaseMetadata;

  bool _updating = false;
  ManagedUpdateStream? _updateStream;

  Future<void> init() async {
    final metadata = _dataService.session.getMetadata(IsarDatabaseMetadata());

    // Create or sync database
    if (metadata.databaseBoxId.isNotEmpty && metadata.updateListBoxId.isNotEmpty) {
      _databaseMetadata = metadata;
      await _updateDatabaseOnInit();
    } else {
      _databaseMetadata = await _initializeDatabase();
    }

    // TODO local concurrency control

    // Listen outcoming updates
    this._database.undeliveredUpdates.watchLazy().listen(_triggerPush);

    // Listen incoming updates
    final updateStream = await _dataService.getBoxUpdateStream();
    updateStream.stream.listen(_handleUpdate);
    _updateStream = updateStream;
  }

  Future<IsarDatabaseMetadata> _initializeDatabase() async {
    final databaseBoxId = uuid.v4();
    final updateListBoxId = uuid.v4();

    await _dataService.writeMessages([
      MessageBoxUpdate(boxId: databaseBoxId, message: IsarDatabase()),
      MessageBoxUpdate(boxId: updateListBoxId, message: IsarUpdateList()),
    ]);

    return IsarDatabaseMetadata(
      databaseBoxId: databaseBoxId,
      updateListBoxId: updateListBoxId,
    );
  }

  Future<void> _replaceRemoteDatabase() async {
    final database = await _dataService.readMessage(
      _databaseMetadata.databaseBoxId,
      IsarDatabase(),
    );

    final actions = <MessageBoxUpdate>[];

    for (final schema in _database.schemas) {
      if (schema.name == UndeliveredUpdateSchema.name) {
        continue;
      }

      final collectionId = database.collectionBoxIds[schema.name] ?? uuid.v4();
      database.collectionBoxIds[schema.name] = collectionId;

      final collection = _database.getCollectionByName(schema.name);
      var serializationHelper = collection.updateCollector.serializationHelper;

      final objects = await collection.buildQuery().findAll();
      final serializedObjects = Map.fromEntries(objects.map(
        (e) => MapEntry(
          schema.getId(e),
          serializationHelper.serialize(e),
        ),
      ));

      actions.add(
        MessageBoxUpdate(
          boxId: collectionId,
          message: IsarCollection(objects: serializedObjects),
        ),
      );
    }

    // Clear update list
    final updateList = await _dataService.readMessage(
      _databaseMetadata.updateListBoxId,
      IsarUpdateList(),
    );

    final updateBoxIds = updateList.updateBoxIds.toList();
    updateList.updateBoxIds.clear();

    actions.add(
      MessageBoxUpdate(
        boxId: _databaseMetadata.updateListBoxId,
        message: updateList,
      ),
    );

    // Increment database version
    database.version++;
    await _updateMetadataDatabaseVersion(database.version);

    // Push new database
    actions.add(
      MessageBoxUpdate(
        boxId: _databaseMetadata.databaseBoxId,
        message: database,
      ),
    );

    // Write changes
    await _dataService.writeMessages(actions);

    // TODO delete old update boxes
  }

  void _triggerPush(void _) async {
    if (_updating) {
      return;
    }

    _updating = true;
    try {
      await _pushUpdates();
    } finally {
      _updating = false;
    }
  }

  Future<void> _pushUpdates() async {
    final updates = await _database.undeliveredUpdates.filter().idIsNotNull().findAll();

    if (updates.isEmpty) {
      return;
    }

    await _dataService.transaction(() async {
      final updateList = await _dataService.readMessage(
        _databaseMetadata.updateListBoxId,
        IsarUpdateList(),
      );

      if (updateList.updateBoxIds.length + updates.length > _maxUpdateListSize) {
        // Clear update list
        updateList.updateBoxIds.clear();
        await _dataService.writeMessage(_databaseMetadata.updateListBoxId, updateList);

        // Update list is full, replace the whole database
        await _replaceRemoteDatabase();
        return;
      }

      // Push updates and update update list
      final actions = <BoxUpdate>[];

      for (final update in updates) {
        final updateBoxId = uuid.v4();
        updateList.updateBoxIds.add(updateBoxId);

        actions.add(BoxUpdate(boxId: updateBoxId, content: update.data));
      }

      await _dataService.writeMany(actions, sync: true);
      await _dataService.writeMessage(_databaseMetadata.updateListBoxId, updateList);

      // Clear local updates
      await _database.writeTxn(() async {
        await _database.undeliveredUpdates.deleteAll(updates.map((e) => e.id!).toList());
      });
    });

    _triggerPush(0);
  }

  Future<void> _handleUpdate(BoxUpdate update) async {
    final typedMessage = IsarTypedMessage.fromBuffer(update.content);

    switch (typedMessage.messageType) {
      case MessageType.MESSAGE_TYPE_UPDATE:
        final isarUpdate = IsarUpdate.fromBuffer(update.content);
        await _database.writeTxn(() async {
          await _applyUpdate(update.boxId, isarUpdate);
        });
        break;
      case MessageType.MESSAGE_TYPE_DATABASE:
        final isarDatabase = IsarDatabase.fromBuffer(update.content);
        await _replaceLocalDatabase(isarDatabase);
        break;
    }
  }

  Future<void> _applyUpdate(String updateBoxId, IsarUpdate update) async {
    final collection = _database.getCollectionByName(update.collectionName);
    final serializationHelper = collection.updateCollector.serializationHelper;

    final putObjects = update.putObjects.entries.map(
      (entry) => serializationHelper.deserialize(
        entry.key,
        Uint8List.fromList(entry.value), // TODO do not copy
      ),
    );

    await collection.putAll(putObjects.toList());
    await collection.deleteAll(update.deletedObjects);

    await _database.appliedUpdates.put(AppliedUpdate(updateBoxId));
  }

  Future<void> _replaceLocalDatabase(IsarDatabase database) async {
    final collections = await _dataService.readTypedMessages(
      database.collectionBoxIds.values,
      () => IsarCollection(),
    );

    final collectionKeys = database.collectionBoxIds.keys.toList();
    final collectionMap = Map<String, IsarCollection>();

    for (var i = 0; i < database.collectionBoxIds.length; i++) {
      collectionMap[collectionKeys[i]] = collections[i];
    }

    await _database.writeTxn(
      () async {
        for (final schema in _database.schemas) {
          if (schema.name == UndeliveredUpdateSchema.name) {
            continue;
          }

          final collection = _database.getCollectionByName(schema.name);
          final serializationHelper = collection.updateCollector.serializationHelper;
          final serializedObjects = collectionMap[schema.name]!.objects;

          final objects = serializedObjects.entries.map(
            (entry) => serializationHelper.deserialize(
              entry.key,
              Uint8List.fromList(entry.value), // TODO do not copy
            ),
          );

          await collection.clear();
          await collection.putAll(objects.toList());
        }

        await _database.appliedUpdates.clear();
      },
      silent: true,
    );

    await _updateMetadataDatabaseVersion(database.version);
  }

  Future<void> _updateDatabaseOnInit() async {
    await _dataService.transaction(() async {
      final database = await _dataService.readMessage(
        _databaseMetadata.databaseBoxId,
        IsarDatabase(),
      );

      if (database.version != _databaseMetadata.version) {
        // Database version changed, replace the whole database
        await _replaceLocalDatabase(database);
        return;
      }

      // Otherwise, apply updates
      final updateList = await _dataService.readMessage(
        _databaseMetadata.updateListBoxId,
        IsarUpdateList(),
      );

      final appliedUpdates = await _database.appliedUpdates.filter().idIsNotNull().findAll();
      final appliedUpdateIds = appliedUpdates.map((e) => e.id!).toList();

      final unappliedUpdateIds =
          updateList.updateBoxIds.where((e) => !appliedUpdateIds.contains(e)).toList();

      final updates = await _dataService.readTypedMessages(
        unappliedUpdateIds,
        () => IsarUpdate(),
      );

      await _database.writeTxn(() async {
        for (var i = 0; i < updates.length; i++) {
          await _applyUpdate(unappliedUpdateIds[i], updates[i]);
        }
      });
    });
  }

  Future<void> _updateMetadataDatabaseVersion(int version) async {
    _databaseMetadata = IsarDatabaseMetadata(
      version: version,
      databaseBoxId: _databaseMetadata.databaseBoxId,
      updateListBoxId: _databaseMetadata.updateListBoxId,
    );

    await _dataService.session.setMetadata(_databaseMetadata);
  }

  Future<void> dispose() async {
    if (_updateStream != null) {
      await _updateStream!.cancel();
    }
  }
}
