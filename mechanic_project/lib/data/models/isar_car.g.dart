// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_car.dart';

// **************************************************************************
// _IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, invalid_use_of_protected_member, lines_longer_than_80_chars, constant_identifier_names, avoid_js_rounded_ints, no_leading_underscores_for_local_identifiers, require_trailing_commas, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_in_if_null_operators, library_private_types_in_public_api, prefer_const_constructors
// ignore_for_file: type=lint

extension GetCarIsarCollection on Isar {
  IsarCollection<int, CarIsar> get carIsars => this.collection();
}

const CarIsarSchema = IsarGeneratedSchema(
  schema: IsarSchema(
    name: 'CarIsar',
    idName: 'id',
    embedded: false,
    properties: [
      IsarPropertySchema(
        name: 'gosNumber',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'description',
        type: IsarType.string,
      ),
      IsarPropertySchema(
        name: 'isCompleted',
        type: IsarType.bool,
      ),
    ],
    indexes: [],
  ),
  converter: IsarObjectConverter<int, CarIsar>(
    serialize: serializeCarIsar,
    deserialize: deserializeCarIsar,
    deserializeProperty: deserializeCarIsarProp,
  ),
  embeddedSchemas: [],
);

@isarProtected
int serializeCarIsar(IsarWriter writer, CarIsar object) {
  IsarCore.writeString(writer, 1, object.gosNumber);
  IsarCore.writeString(writer, 2, object.description);
  IsarCore.writeBool(writer, 3, object.isCompleted);
  return object.id;
}

@isarProtected
CarIsar deserializeCarIsar(IsarReader reader) {
  final int _id;
  _id = IsarCore.readId(reader);
  final String _gosNumber;
  _gosNumber = IsarCore.readString(reader, 1) ?? '';
  final String _description;
  _description = IsarCore.readString(reader, 2) ?? '';
  final object = CarIsar(
    id: _id,
    gosNumber: _gosNumber,
    description: _description,
  );
  object.isCompleted = IsarCore.readBool(reader, 3);
  return object;
}

@isarProtected
dynamic deserializeCarIsarProp(IsarReader reader, int property) {
  switch (property) {
    case 0:
      return IsarCore.readId(reader);
    case 1:
      return IsarCore.readString(reader, 1) ?? '';
    case 2:
      return IsarCore.readString(reader, 2) ?? '';
    case 3:
      return IsarCore.readBool(reader, 3);
    default:
      throw ArgumentError('Unknown property: $property');
  }
}

sealed class _CarIsarUpdate {
  bool call({
    required int id,
    String? gosNumber,
    String? description,
    bool? isCompleted,
  });
}

class _CarIsarUpdateImpl implements _CarIsarUpdate {
  const _CarIsarUpdateImpl(this.collection);

  final IsarCollection<int, CarIsar> collection;

  @override
  bool call({
    required int id,
    Object? gosNumber = ignore,
    Object? description = ignore,
    Object? isCompleted = ignore,
  }) {
    return collection.updateProperties([
          id
        ], {
          if (gosNumber != ignore) 1: gosNumber as String?,
          if (description != ignore) 2: description as String?,
          if (isCompleted != ignore) 3: isCompleted as bool?,
        }) >
        0;
  }
}

sealed class _CarIsarUpdateAll {
  int call({
    required List<int> id,
    String? gosNumber,
    String? description,
    bool? isCompleted,
  });
}

class _CarIsarUpdateAllImpl implements _CarIsarUpdateAll {
  const _CarIsarUpdateAllImpl(this.collection);

  final IsarCollection<int, CarIsar> collection;

  @override
  int call({
    required List<int> id,
    Object? gosNumber = ignore,
    Object? description = ignore,
    Object? isCompleted = ignore,
  }) {
    return collection.updateProperties(id, {
      if (gosNumber != ignore) 1: gosNumber as String?,
      if (description != ignore) 2: description as String?,
      if (isCompleted != ignore) 3: isCompleted as bool?,
    });
  }
}

extension CarIsarUpdate on IsarCollection<int, CarIsar> {
  _CarIsarUpdate get update => _CarIsarUpdateImpl(this);

  _CarIsarUpdateAll get updateAll => _CarIsarUpdateAllImpl(this);
}

sealed class _CarIsarQueryUpdate {
  int call({
    String? gosNumber,
    String? description,
    bool? isCompleted,
  });
}

class _CarIsarQueryUpdateImpl implements _CarIsarQueryUpdate {
  const _CarIsarQueryUpdateImpl(this.query, {this.limit});

  final IsarQuery<CarIsar> query;
  final int? limit;

  @override
  int call({
    Object? gosNumber = ignore,
    Object? description = ignore,
    Object? isCompleted = ignore,
  }) {
    return query.updateProperties(limit: limit, {
      if (gosNumber != ignore) 1: gosNumber as String?,
      if (description != ignore) 2: description as String?,
      if (isCompleted != ignore) 3: isCompleted as bool?,
    });
  }
}

extension CarIsarQueryUpdate on IsarQuery<CarIsar> {
  _CarIsarQueryUpdate get updateFirst =>
      _CarIsarQueryUpdateImpl(this, limit: 1);

  _CarIsarQueryUpdate get updateAll => _CarIsarQueryUpdateImpl(this);
}

class _CarIsarQueryBuilderUpdateImpl implements _CarIsarQueryUpdate {
  const _CarIsarQueryBuilderUpdateImpl(this.query, {this.limit});

  final QueryBuilder<CarIsar, CarIsar, QOperations> query;
  final int? limit;

  @override
  int call({
    Object? gosNumber = ignore,
    Object? description = ignore,
    Object? isCompleted = ignore,
  }) {
    final q = query.build();
    try {
      return q.updateProperties(limit: limit, {
        if (gosNumber != ignore) 1: gosNumber as String?,
        if (description != ignore) 2: description as String?,
        if (isCompleted != ignore) 3: isCompleted as bool?,
      });
    } finally {
      q.close();
    }
  }
}

extension CarIsarQueryBuilderUpdate
    on QueryBuilder<CarIsar, CarIsar, QOperations> {
  _CarIsarQueryUpdate get updateFirst =>
      _CarIsarQueryBuilderUpdateImpl(this, limit: 1);

  _CarIsarQueryUpdate get updateAll => _CarIsarQueryBuilderUpdateImpl(this);
}

extension CarIsarQueryFilter
    on QueryBuilder<CarIsar, CarIsar, QFilterCondition> {
  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> idEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> idGreaterThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> idGreaterThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> idLessThan(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> idLessThanOrEqualTo(
    int value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 0,
          value: value,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> idBetween(
    int lower,
    int upper,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 0,
          lower: lower,
          upper: upper,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> gosNumberEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> gosNumberGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition>
      gosNumberGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> gosNumberLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition>
      gosNumberLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> gosNumberBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 1,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> gosNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> gosNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> gosNumberContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 1,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> gosNumberMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 1,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> gosNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> gosNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 1,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> descriptionEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> descriptionGreaterThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition>
      descriptionGreaterThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        GreaterOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> descriptionLessThan(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition>
      descriptionLessThanOrEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        LessOrEqualCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> descriptionBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        BetweenCondition(
          property: 2,
          lower: lower,
          upper: upper,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        StartsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EndsWithCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> descriptionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        ContainsCondition(
          property: 2,
          value: value,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> descriptionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        MatchesCondition(
          property: 2,
          wildcard: pattern,
          caseSensitive: caseSensitive,
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const EqualCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        const GreaterCondition(
          property: 2,
          value: '',
        ),
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterFilterCondition> isCompletedEqualTo(
    bool value,
  ) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(
        EqualCondition(
          property: 3,
          value: value,
        ),
      );
    });
  }
}

extension CarIsarQueryObject
    on QueryBuilder<CarIsar, CarIsar, QFilterCondition> {}

extension CarIsarQuerySortBy on QueryBuilder<CarIsar, CarIsar, QSortBy> {
  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> sortByGosNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> sortByGosNumberDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        1,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> sortByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> sortByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(
        2,
        sort: Sort.desc,
        caseSensitive: caseSensitive,
      );
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> sortByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> sortByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }
}

extension CarIsarQuerySortThenBy
    on QueryBuilder<CarIsar, CarIsar, QSortThenBy> {
  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(0, sort: Sort.desc);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> thenByGosNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> thenByGosNumberDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(1, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> thenByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> thenByDescriptionDesc(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(2, sort: Sort.desc, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> thenByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterSortBy> thenByIsCompletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(3, sort: Sort.desc);
    });
  }
}

extension CarIsarQueryWhereDistinct
    on QueryBuilder<CarIsar, CarIsar, QDistinct> {
  QueryBuilder<CarIsar, CarIsar, QAfterDistinct> distinctByGosNumber(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(1, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(2, caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CarIsar, CarIsar, QAfterDistinct> distinctByIsCompleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(3);
    });
  }
}

extension CarIsarQueryProperty1 on QueryBuilder<CarIsar, CarIsar, QProperty> {
  QueryBuilder<CarIsar, int, QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CarIsar, String, QAfterProperty> gosNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CarIsar, String, QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<CarIsar, bool, QAfterProperty> isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension CarIsarQueryProperty2<R> on QueryBuilder<CarIsar, R, QAfterProperty> {
  QueryBuilder<CarIsar, (R, int), QAfterProperty> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CarIsar, (R, String), QAfterProperty> gosNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CarIsar, (R, String), QAfterProperty> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<CarIsar, (R, bool), QAfterProperty> isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}

extension CarIsarQueryProperty3<R1, R2>
    on QueryBuilder<CarIsar, (R1, R2), QAfterProperty> {
  QueryBuilder<CarIsar, (R1, R2, int), QOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(0);
    });
  }

  QueryBuilder<CarIsar, (R1, R2, String), QOperations> gosNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(1);
    });
  }

  QueryBuilder<CarIsar, (R1, R2, String), QOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(2);
    });
  }

  QueryBuilder<CarIsar, (R1, R2, bool), QOperations> isCompletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addProperty(3);
    });
  }
}
