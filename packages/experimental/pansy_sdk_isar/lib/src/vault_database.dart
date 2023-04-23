// ignore_for_file: invalid_use_of_visible_for_testing_member

import 'package:isar/isar.dart';
import 'package:isar/src/native/isar_impl.dart';
import 'package:pansy_sdk/pansy_sdk.dart';
import 'package:pansy_sdk_isar/src/applied_update.dart';
import 'package:pansy_sdk_isar/src/synchronization_worker.dart';

import 'serialization_helper.dart';
import 'undelivered_update.dart';
import 'update_collector.dart';
import 'vault_collection.dart';

class VaultDatabase implements Isar {
  VaultDatabase._(this.schemas, this._isar);

  final List<CollectionSchema> schemas;

  final Isar _isar;
  final Map<Type, VaultCollection> _collections = {};

  // We need circular reference here
  // ignore: avoid-late-keyword
  late SynchronizationWorker _synchronizationWorker;

  static Future<VaultDatabase> open(
    List<CollectionSchema> schemas, {
    required ManagedDataService dataService,
  }) async {
    final isar = await Isar.open(
      [
        ...schemas,
        UndeliveredUpdateSchema,
        AppliedUpdateSchema,
      ],
      directory: '',
    );

    final database = VaultDatabase._(schemas, isar);
    final syncWorker = SynchronizationWorker(database, dataService);
    database._synchronizationWorker = syncWorker;

    await syncWorker.init();
    return database;
  }

  @override
  void attachCollections(Map<Type, IsarCollection> collections) {
    for (final entry in collections.entries) {
      final serializationHelper = SerializationHelper(entry.value.schema, this as IsarImpl);
      final updateCollector = UpdateCollector(entry.value.schema, this, serializationHelper);

      final collection = VaultCollection(entry.value, updateCollector);
      _collections[entry.key] = collection;
    }

    _isar.attachCollections(collections);
  }

  @override
  Future<void> clear() {
    return _isar.clear();
  }

  @override
  void clearSync() {
    _isar.clearSync();
  }

  @override
  Future<bool> close({bool deleteFromDisk = false}) async {
    await _synchronizationWorker.dispose();
    return _isar.close(deleteFromDisk: deleteFromDisk);
  }

  @override
  IsarCollection<T> collection<T>() {
    return _collections[T] as IsarCollection<T>;
  }

  @override
  Future<void> copyToFile(String targetPath) {
    return _isar.copyToFile(targetPath);
  }

  @override
  String? get directory => _isar.directory;

  VaultCollection getCollectionByName(String name) {
    for (final collection in _collections.values) {
      if (collection.schema.name == name) {
        return collection;
      }
    }

    throw Exception('Collection with name $name not found');
  }

  @override
  IsarCollection? getCollectionByNameInternal(String name) {
    return _isar.getCollectionByNameInternal(name);
  }

  @override
  Future<int> getSize({bool includeIndexes = false, bool includeLinks = false}) {
    return _isar.getSize(includeIndexes: includeIndexes, includeLinks: includeLinks);
  }

  @override
  int getSizeSync({bool includeIndexes = false, bool includeLinks = false}) {
    return _isar.getSizeSync(includeIndexes: includeIndexes, includeLinks: includeLinks);
  }

  @override
  bool get isOpen => _isar.isOpen;

  @override
  String get name => _isar.name;

  @override
  String? get path => _isar.path;

  @override
  void requireOpen() {
    _isar.requireOpen();
  }

  @override
  Future<T> txn<T>(Future<T> Function() callback) {
    return _isar.txn(callback);
  }

  @override
  T txnSync<T>(T Function() callback) {
    return _isar.txnSync(callback);
  }

  @override
  Future<void> verify() {
    return _isar.verify();
  }

  @override
  Future<T> writeTxn<T>(Future<T> Function() callback, {bool silent = false}) async {
    try {
      return await _isar.writeTxn(callback, silent: silent);
    } finally {
      for (final collection in _collections.values) {
        await collection.updateCollector.finishTransaction();
      }
    }
  }

  @override
  T writeTxnSync<T>(T Function() callback, {bool silent = false}) {
    try {
      return _isar.writeTxnSync(callback, silent: silent);
    } finally {
      for (final collection in _collections.values) {
        collection.updateCollector.finishTransactionSync();
      }
    }
  }
}
