// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applied_update.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAppliedUpdateCollection on Isar {
  IsarCollection<AppliedUpdate> get appliedUpdates => this.collection();
}

const AppliedUpdateSchema = CollectionSchema(
  name: r'AppliedUpdate',
  id: -5505097506829347836,
  properties: {
    r'updateBoxId': PropertySchema(
      id: 0,
      name: r'updateBoxId',
      type: IsarType.string,
    )
  },
  estimateSize: _appliedUpdateEstimateSize,
  serialize: _appliedUpdateSerialize,
  deserialize: _appliedUpdateDeserialize,
  deserializeProp: _appliedUpdateDeserializeProp,
  idName: r'id',
  indexes: {
    r'updateBoxId': IndexSchema(
      id: -3779664169501259181,
      name: r'updateBoxId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'updateBoxId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _appliedUpdateGetId,
  getLinks: _appliedUpdateGetLinks,
  attach: _appliedUpdateAttach,
  version: '3.1.0',
);

int _appliedUpdateEstimateSize(
  AppliedUpdate object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.updateBoxId.length * 3;
  return bytesCount;
}

void _appliedUpdateSerialize(
  AppliedUpdate object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.updateBoxId);
}

AppliedUpdate _appliedUpdateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = AppliedUpdate(
    reader.readString(offsets[0]),
  );
  object.id = id;
  return object;
}

P _appliedUpdateDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _appliedUpdateGetId(AppliedUpdate object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _appliedUpdateGetLinks(AppliedUpdate object) {
  return [];
}

void _appliedUpdateAttach(
    IsarCollection<dynamic> col, Id id, AppliedUpdate object) {
  object.id = id;
}

extension AppliedUpdateByIndex on IsarCollection<AppliedUpdate> {
  Future<AppliedUpdate?> getByUpdateBoxId(String updateBoxId) {
    return getByIndex(r'updateBoxId', [updateBoxId]);
  }

  AppliedUpdate? getByUpdateBoxIdSync(String updateBoxId) {
    return getByIndexSync(r'updateBoxId', [updateBoxId]);
  }

  Future<bool> deleteByUpdateBoxId(String updateBoxId) {
    return deleteByIndex(r'updateBoxId', [updateBoxId]);
  }

  bool deleteByUpdateBoxIdSync(String updateBoxId) {
    return deleteByIndexSync(r'updateBoxId', [updateBoxId]);
  }

  Future<List<AppliedUpdate?>> getAllByUpdateBoxId(
      List<String> updateBoxIdValues) {
    final values = updateBoxIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'updateBoxId', values);
  }

  List<AppliedUpdate?> getAllByUpdateBoxIdSync(List<String> updateBoxIdValues) {
    final values = updateBoxIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'updateBoxId', values);
  }

  Future<int> deleteAllByUpdateBoxId(List<String> updateBoxIdValues) {
    final values = updateBoxIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'updateBoxId', values);
  }

  int deleteAllByUpdateBoxIdSync(List<String> updateBoxIdValues) {
    final values = updateBoxIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'updateBoxId', values);
  }

  Future<Id> putByUpdateBoxId(AppliedUpdate object) {
    return putByIndex(r'updateBoxId', object);
  }

  Id putByUpdateBoxIdSync(AppliedUpdate object, {bool saveLinks = true}) {
    return putByIndexSync(r'updateBoxId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByUpdateBoxId(List<AppliedUpdate> objects) {
    return putAllByIndex(r'updateBoxId', objects);
  }

  List<Id> putAllByUpdateBoxIdSync(List<AppliedUpdate> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'updateBoxId', objects, saveLinks: saveLinks);
  }
}

extension AppliedUpdateQueryWhereSort
    on QueryBuilder<AppliedUpdate, AppliedUpdate, QWhere> {
  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AppliedUpdateQueryWhere
    on QueryBuilder<AppliedUpdate, AppliedUpdate, QWhereClause> {
  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterWhereClause>
      updateBoxIdEqualTo(String updateBoxId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'updateBoxId',
        value: [updateBoxId],
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterWhereClause>
      updateBoxIdNotEqualTo(String updateBoxId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updateBoxId',
              lower: [],
              upper: [updateBoxId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updateBoxId',
              lower: [updateBoxId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updateBoxId',
              lower: [updateBoxId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'updateBoxId',
              lower: [],
              upper: [updateBoxId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension AppliedUpdateQueryFilter
    on QueryBuilder<AppliedUpdate, AppliedUpdate, QFilterCondition> {
  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition> idEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition> idLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition> idBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      updateBoxIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateBoxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      updateBoxIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'updateBoxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      updateBoxIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'updateBoxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      updateBoxIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'updateBoxId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      updateBoxIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'updateBoxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      updateBoxIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'updateBoxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      updateBoxIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'updateBoxId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      updateBoxIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'updateBoxId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      updateBoxIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'updateBoxId',
        value: '',
      ));
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterFilterCondition>
      updateBoxIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'updateBoxId',
        value: '',
      ));
    });
  }
}

extension AppliedUpdateQueryObject
    on QueryBuilder<AppliedUpdate, AppliedUpdate, QFilterCondition> {}

extension AppliedUpdateQueryLinks
    on QueryBuilder<AppliedUpdate, AppliedUpdate, QFilterCondition> {}

extension AppliedUpdateQuerySortBy
    on QueryBuilder<AppliedUpdate, AppliedUpdate, QSortBy> {
  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterSortBy> sortByUpdateBoxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateBoxId', Sort.asc);
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterSortBy>
      sortByUpdateBoxIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateBoxId', Sort.desc);
    });
  }
}

extension AppliedUpdateQuerySortThenBy
    on QueryBuilder<AppliedUpdate, AppliedUpdate, QSortThenBy> {
  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterSortBy> thenByUpdateBoxId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateBoxId', Sort.asc);
    });
  }

  QueryBuilder<AppliedUpdate, AppliedUpdate, QAfterSortBy>
      thenByUpdateBoxIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'updateBoxId', Sort.desc);
    });
  }
}

extension AppliedUpdateQueryWhereDistinct
    on QueryBuilder<AppliedUpdate, AppliedUpdate, QDistinct> {
  QueryBuilder<AppliedUpdate, AppliedUpdate, QDistinct> distinctByUpdateBoxId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'updateBoxId', caseSensitive: caseSensitive);
    });
  }
}

extension AppliedUpdateQueryProperty
    on QueryBuilder<AppliedUpdate, AppliedUpdate, QQueryProperty> {
  QueryBuilder<AppliedUpdate, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<AppliedUpdate, String, QQueryOperations> updateBoxIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'updateBoxId');
    });
  }
}
