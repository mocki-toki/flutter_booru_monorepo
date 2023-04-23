import 'package:isar/isar.dart';
import 'package:pansy_sdk_isar/src/serialization_helper.dart';
import 'package:pansy_sdk_protocols/pansy_sdk_protocols.dart';

import 'undelivered_update.dart';

class UpdateCollector<T> {
  UpdateCollector(this._schema, this._isar, this.serializationHelper);

  final SerializationHelper<T> serializationHelper;
  final CollectionSchema<T> _schema;
  final Isar _isar;

  final Map<int, List<int>> _putObjects = {};
  final List<int> _deletedObjects = [];

  Future<void> finishTransaction() async {
    if (_putObjects.isNotEmpty || _deletedObjects.isNotEmpty) {
      final update = IsarUpdate(
        putObjects: _putObjects,
        deletedObjects: _deletedObjects,
      ).writeToBuffer();

      _putObjects.clear();
      _deletedObjects.clear();

      await _isar.undeliveredUpdates.put(UndeliveredUpdate(update));
    }
  }

  void finishTransactionSync() {
    if (_putObjects.isNotEmpty || _deletedObjects.isNotEmpty) {
      final update = IsarUpdate(
        collectionName: _schema.name,
        putObjects: _putObjects,
        deletedObjects: _deletedObjects,
      ).writeToBuffer();

      _putObjects.clear();
      _deletedObjects.clear();

      _isar.undeliveredUpdates.putSync(UndeliveredUpdate(update));
    }
  }

  void putObjects(Iterable<T> objects) {
    for (final object in objects) {
      final id = _schema.getId(object);
      final bytes = serializationHelper.serialize(object);

      _putObjects[id] = bytes;
    }
  }

  void deleteObjects(Iterable<Id> ids) {
    _deletedObjects.addAll(ids);
  }
}
