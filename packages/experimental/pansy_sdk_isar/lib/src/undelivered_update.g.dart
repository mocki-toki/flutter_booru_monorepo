// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'undelivered_update.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUndeliveredUpdateCollection on Isar {
  IsarCollection<UndeliveredUpdate> get undeliveredUpdates => this.collection();
}

const UndeliveredUpdateSchema = CollectionSchema(
  name: r'UndeliveredUpdate',
  id: -6845951401870505477,
  properties: {
    r'data': PropertySchema(
      id: 0,
      name: r'data',
      type: IsarType.longList,
    )
  },
  estimateSize: _undeliveredUpdateEstimateSize,
  serialize: _undeliveredUpdateSerialize,
  deserialize: _undeliveredUpdateDeserialize,
  deserializeProp: _undeliveredUpdateDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _undeliveredUpdateGetId,
  getLinks: _undeliveredUpdateGetLinks,
  attach: _undeliveredUpdateAttach,
  version: '3.1.0',
);

int _undeliveredUpdateEstimateSize(
  UndeliveredUpdate object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.data.length * 8;
  return bytesCount;
}

void _undeliveredUpdateSerialize(
  UndeliveredUpdate object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLongList(offsets[0], object.data);
}

UndeliveredUpdate _undeliveredUpdateDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UndeliveredUpdate(
    reader.readLongList(offsets[0]) ?? [],
  );
  object.id = id;
  return object;
}

P _undeliveredUpdateDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _undeliveredUpdateGetId(UndeliveredUpdate object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _undeliveredUpdateGetLinks(
    UndeliveredUpdate object) {
  return [];
}

void _undeliveredUpdateAttach(
    IsarCollection<dynamic> col, Id id, UndeliveredUpdate object) {
  object.id = id;
}

extension UndeliveredUpdateQueryWhereSort
    on QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QWhere> {
  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UndeliveredUpdateQueryWhere
    on QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QWhereClause> {
  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterWhereClause>
      idBetween(
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
}

extension UndeliveredUpdateQueryFilter
    on QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QFilterCondition> {
  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      dataElementEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'data',
        value: value,
      ));
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      dataElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'data',
        value: value,
      ));
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      dataElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'data',
        value: value,
      ));
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      dataElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'data',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      dataLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      dataIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      dataIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      dataLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      dataLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      dataLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'data',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
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

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterFilterCondition>
      idBetween(
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
}

extension UndeliveredUpdateQueryObject
    on QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QFilterCondition> {}

extension UndeliveredUpdateQueryLinks
    on QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QFilterCondition> {}

extension UndeliveredUpdateQuerySortBy
    on QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QSortBy> {}

extension UndeliveredUpdateQuerySortThenBy
    on QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QSortThenBy> {
  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension UndeliveredUpdateQueryWhereDistinct
    on QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QDistinct> {
  QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QDistinct>
      distinctByData() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'data');
    });
  }
}

extension UndeliveredUpdateQueryProperty
    on QueryBuilder<UndeliveredUpdate, UndeliveredUpdate, QQueryProperty> {
  QueryBuilder<UndeliveredUpdate, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UndeliveredUpdate, List<int>, QQueryOperations> dataProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'data');
    });
  }
}
