// ignore_for_file: invalid_use_of_visible_for_testing_member, long-parameter-list

import 'dart:typed_data';

import 'package:isar/isar.dart';
import 'package:pansy_sdk_isar/src/update_collector.dart';

class VaultCollection<T> extends IsarCollection<T> {
  VaultCollection(this._collection, this.updateCollector);

  final UpdateCollector<T> updateCollector;
  final IsarCollection<T> _collection;

  @override
  Query<R> buildQuery<R>({
    List<WhereClause> whereClauses = const [],
    bool whereDistinct = false,
    Sort whereSort = Sort.asc,
    FilterOperation? filter,
    List<SortProperty> sortBy = const [],
    List<DistinctProperty> distinctBy = const [],
    int? offset,
    int? limit,
    String? property,
  }) {
    return _collection.buildQuery(
      whereClauses: whereClauses,
      whereDistinct: whereDistinct,
      whereSort: whereSort,
      filter: filter,
      sortBy: sortBy,
      distinctBy: distinctBy,
      offset: offset,
      limit: limit,
      property: property,
    );
  }

  @override
  Future<void> clear() {
    return _collection.clear();
  }

  @override
  void clearSync() {
    _collection.clearSync();
  }

  @override
  Future<int> count() {
    return _collection.count();
  }

  @override
  int countSync() {
    return _collection.countSync();
  }

  @override
  Future<int> deleteAll(List<Id> ids) {
    final result = _collection.deleteAll(ids);
    updateCollector.deleteObjects(ids);
    return result;
  }

  @override
  Future<int> deleteAllByIndex(String indexName, List<IndexKey> keys) {
    throw UnimplementedError('deleteAllByIndex is not supported for vault collections');
  }

  @override
  int deleteAllByIndexSync(String indexName, List<IndexKey> keys) {
    throw UnimplementedError('deleteAllByIndexSync is not supported for vault collections');
  }

  @override
  int deleteAllSync(List<Id> ids) {
    final result = _collection.deleteAllSync(ids);
    updateCollector.deleteObjects(ids);
    return result;
  }

  @override
  Future<List<T?>> getAll(List<Id> ids) {
    return _collection.getAll(ids);
  }

  @override
  Future<List<T?>> getAllByIndex(String indexName, List<IndexKey> keys) {
    return _collection.getAllByIndex(indexName, keys);
  }

  @override
  List<T?> getAllByIndexSync(String indexName, List<IndexKey> keys) {
    return _collection.getAllByIndexSync(indexName, keys);
  }

  @override
  List<T?> getAllSync(List<Id> ids) {
    return _collection.getAllSync(ids);
  }

  @override
  Future<int> getSize({bool includeIndexes = false, bool includeLinks = false}) {
    return _collection.getSize(includeIndexes: includeIndexes, includeLinks: includeLinks);
  }

  @override
  int getSizeSync({bool includeIndexes = false, bool includeLinks = false}) {
    return _collection.getSizeSync(includeIndexes: includeIndexes, includeLinks: includeLinks);
  }

  @override
  Future<void> importJson(List<Map<String, dynamic>> json) {
    throw UnimplementedError('importJson is not supported for vault collections');
  }

  @override
  Future<void> importJsonRaw(Uint8List jsonBytes) {
    throw UnimplementedError('importJsonRaw is not supported for vault collections');
  }

  @override
  void importJsonRawSync(Uint8List jsonBytes) {
    throw UnimplementedError('importJsonRawSync is not supported for vault collections');
  }

  @override
  void importJsonSync(List<Map<String, dynamic>> json) {
    throw UnimplementedError('importJsonSync is not supported for vault collections');
  }

  @override
  Isar get isar => _collection.isar;

  @override
  Future<List<Id>> putAll(List<T> objects) async {
    final result = await _collection.putAll(objects);
    updateCollector.putObjects(objects);
    return result;
  }

  @override
  Future<List<Id>> putAllByIndex(String indexName, List<T> objects) {
    final result = _collection.putAllByIndex(indexName, objects);
    updateCollector.putObjects(objects);
    return result;
  }

  @override
  List<Id> putAllByIndexSync(String indexName, List<T> objects, {bool saveLinks = true}) {
    final result = _collection.putAllByIndexSync(indexName, objects, saveLinks: saveLinks);
    updateCollector.putObjects(objects);
    return result;
  }

  @override
  List<Id> putAllSync(List<T> objects, {bool saveLinks = true}) {
    final result = _collection.putAllSync(objects, saveLinks: saveLinks);
    updateCollector.putObjects(objects);
    return result;
  }

  @override
  CollectionSchema<T> get schema => _collection.schema;

  @override
  Future<void> verify(List<T> objects) {
    return _collection.verify(objects);
  }

  @override
  Future<void> verifyLink(String linkName, List<int> sourceIds, List<int> targetIds) {
    return _collection.verifyLink(linkName, sourceIds, targetIds);
  }

  @override
  Stream<void> watchLazy({bool fireImmediately = false}) {
    return _collection.watchLazy(fireImmediately: fireImmediately);
  }

  @override
  Stream<T?> watchObject(Id id, {bool fireImmediately = false}) {
    return _collection.watchObject(id, fireImmediately: fireImmediately);
  }

  @override
  Stream<void> watchObjectLazy(Id id, {bool fireImmediately = false}) {
    return _collection.watchObjectLazy(id, fireImmediately: fireImmediately);
  }
}
