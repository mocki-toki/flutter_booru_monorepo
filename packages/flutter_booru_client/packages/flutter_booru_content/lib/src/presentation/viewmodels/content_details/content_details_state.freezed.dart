// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentDetailsState {
  UuidValue get uuid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidValue uuid) empty,
    required TResult Function(UuidValue uuid, ContentModel? data) loading,
    required TResult Function(UuidValue uuid, ContentModel data) loaded,
    required TResult Function(UuidValue uuid, String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidValue uuid)? empty,
    TResult? Function(UuidValue uuid, ContentModel? data)? loading,
    TResult? Function(UuidValue uuid, ContentModel data)? loaded,
    TResult? Function(UuidValue uuid, String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidValue uuid)? empty,
    TResult Function(UuidValue uuid, ContentModel? data)? loading,
    TResult Function(UuidValue uuid, ContentModel data)? loaded,
    TResult Function(UuidValue uuid, String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentDetailsStateEmpty value) empty,
    required TResult Function(ContentDetailsStateLoading value) loading,
    required TResult Function(ContentDetailsStateLoaded value) loaded,
    required TResult Function(ContentDetailsStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContentDetailsStateEmpty value)? empty,
    TResult? Function(ContentDetailsStateLoading value)? loading,
    TResult? Function(ContentDetailsStateLoaded value)? loaded,
    TResult? Function(ContentDetailsStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentDetailsStateEmpty value)? empty,
    TResult Function(ContentDetailsStateLoading value)? loading,
    TResult Function(ContentDetailsStateLoaded value)? loaded,
    TResult Function(ContentDetailsStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ContentDetailsStateCopyWith<ContentDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDetailsStateCopyWith<$Res> {
  factory $ContentDetailsStateCopyWith(
          ContentDetailsState value, $Res Function(ContentDetailsState) then) =
      _$ContentDetailsStateCopyWithImpl<$Res, ContentDetailsState>;
  @useResult
  $Res call({UuidValue uuid});
}

/// @nodoc
class _$ContentDetailsStateCopyWithImpl<$Res, $Val extends ContentDetailsState>
    implements $ContentDetailsStateCopyWith<$Res> {
  _$ContentDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentDetailsStateEmptyCopyWith<$Res>
    implements $ContentDetailsStateCopyWith<$Res> {
  factory _$$ContentDetailsStateEmptyCopyWith(_$ContentDetailsStateEmpty value,
          $Res Function(_$ContentDetailsStateEmpty) then) =
      __$$ContentDetailsStateEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UuidValue uuid});
}

/// @nodoc
class __$$ContentDetailsStateEmptyCopyWithImpl<$Res>
    extends _$ContentDetailsStateCopyWithImpl<$Res, _$ContentDetailsStateEmpty>
    implements _$$ContentDetailsStateEmptyCopyWith<$Res> {
  __$$ContentDetailsStateEmptyCopyWithImpl(_$ContentDetailsStateEmpty _value,
      $Res Function(_$ContentDetailsStateEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$ContentDetailsStateEmpty(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
    ));
  }
}

/// @nodoc

class _$ContentDetailsStateEmpty implements ContentDetailsStateEmpty {
  const _$ContentDetailsStateEmpty({required this.uuid});

  @override
  final UuidValue uuid;

  @override
  String toString() {
    return 'ContentDetailsState.empty(uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentDetailsStateEmpty &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentDetailsStateEmptyCopyWith<_$ContentDetailsStateEmpty>
      get copyWith =>
          __$$ContentDetailsStateEmptyCopyWithImpl<_$ContentDetailsStateEmpty>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidValue uuid) empty,
    required TResult Function(UuidValue uuid, ContentModel? data) loading,
    required TResult Function(UuidValue uuid, ContentModel data) loaded,
    required TResult Function(UuidValue uuid, String errorMessage) failure,
  }) {
    return empty(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidValue uuid)? empty,
    TResult? Function(UuidValue uuid, ContentModel? data)? loading,
    TResult? Function(UuidValue uuid, ContentModel data)? loaded,
    TResult? Function(UuidValue uuid, String errorMessage)? failure,
  }) {
    return empty?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidValue uuid)? empty,
    TResult Function(UuidValue uuid, ContentModel? data)? loading,
    TResult Function(UuidValue uuid, ContentModel data)? loaded,
    TResult Function(UuidValue uuid, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentDetailsStateEmpty value) empty,
    required TResult Function(ContentDetailsStateLoading value) loading,
    required TResult Function(ContentDetailsStateLoaded value) loaded,
    required TResult Function(ContentDetailsStateFailure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContentDetailsStateEmpty value)? empty,
    TResult? Function(ContentDetailsStateLoading value)? loading,
    TResult? Function(ContentDetailsStateLoaded value)? loaded,
    TResult? Function(ContentDetailsStateFailure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentDetailsStateEmpty value)? empty,
    TResult Function(ContentDetailsStateLoading value)? loading,
    TResult Function(ContentDetailsStateLoaded value)? loaded,
    TResult Function(ContentDetailsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ContentDetailsStateEmpty implements ContentDetailsState {
  const factory ContentDetailsStateEmpty({required final UuidValue uuid}) =
      _$ContentDetailsStateEmpty;

  @override
  UuidValue get uuid;
  @override
  @JsonKey(ignore: true)
  _$$ContentDetailsStateEmptyCopyWith<_$ContentDetailsStateEmpty>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentDetailsStateLoadingCopyWith<$Res>
    implements $ContentDetailsStateCopyWith<$Res> {
  factory _$$ContentDetailsStateLoadingCopyWith(
          _$ContentDetailsStateLoading value,
          $Res Function(_$ContentDetailsStateLoading) then) =
      __$$ContentDetailsStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UuidValue uuid, ContentModel? data});
}

/// @nodoc
class __$$ContentDetailsStateLoadingCopyWithImpl<$Res>
    extends _$ContentDetailsStateCopyWithImpl<$Res,
        _$ContentDetailsStateLoading>
    implements _$$ContentDetailsStateLoadingCopyWith<$Res> {
  __$$ContentDetailsStateLoadingCopyWithImpl(
      _$ContentDetailsStateLoading _value,
      $Res Function(_$ContentDetailsStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? data = freezed,
  }) {
    return _then(_$ContentDetailsStateLoading(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContentModel?,
    ));
  }
}

/// @nodoc

class _$ContentDetailsStateLoading implements ContentDetailsStateLoading {
  const _$ContentDetailsStateLoading({required this.uuid, this.data});

  @override
  final UuidValue uuid;
  @override
  final ContentModel? data;

  @override
  String toString() {
    return 'ContentDetailsState.loading(uuid: $uuid, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentDetailsStateLoading &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentDetailsStateLoadingCopyWith<_$ContentDetailsStateLoading>
      get copyWith => __$$ContentDetailsStateLoadingCopyWithImpl<
          _$ContentDetailsStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidValue uuid) empty,
    required TResult Function(UuidValue uuid, ContentModel? data) loading,
    required TResult Function(UuidValue uuid, ContentModel data) loaded,
    required TResult Function(UuidValue uuid, String errorMessage) failure,
  }) {
    return loading(uuid, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidValue uuid)? empty,
    TResult? Function(UuidValue uuid, ContentModel? data)? loading,
    TResult? Function(UuidValue uuid, ContentModel data)? loaded,
    TResult? Function(UuidValue uuid, String errorMessage)? failure,
  }) {
    return loading?.call(uuid, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidValue uuid)? empty,
    TResult Function(UuidValue uuid, ContentModel? data)? loading,
    TResult Function(UuidValue uuid, ContentModel data)? loaded,
    TResult Function(UuidValue uuid, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(uuid, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentDetailsStateEmpty value) empty,
    required TResult Function(ContentDetailsStateLoading value) loading,
    required TResult Function(ContentDetailsStateLoaded value) loaded,
    required TResult Function(ContentDetailsStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContentDetailsStateEmpty value)? empty,
    TResult? Function(ContentDetailsStateLoading value)? loading,
    TResult? Function(ContentDetailsStateLoaded value)? loaded,
    TResult? Function(ContentDetailsStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentDetailsStateEmpty value)? empty,
    TResult Function(ContentDetailsStateLoading value)? loading,
    TResult Function(ContentDetailsStateLoaded value)? loaded,
    TResult Function(ContentDetailsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ContentDetailsStateLoading implements ContentDetailsState {
  const factory ContentDetailsStateLoading(
      {required final UuidValue uuid,
      final ContentModel? data}) = _$ContentDetailsStateLoading;

  @override
  UuidValue get uuid;
  ContentModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$ContentDetailsStateLoadingCopyWith<_$ContentDetailsStateLoading>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentDetailsStateLoadedCopyWith<$Res>
    implements $ContentDetailsStateCopyWith<$Res> {
  factory _$$ContentDetailsStateLoadedCopyWith(
          _$ContentDetailsStateLoaded value,
          $Res Function(_$ContentDetailsStateLoaded) then) =
      __$$ContentDetailsStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UuidValue uuid, ContentModel data});
}

/// @nodoc
class __$$ContentDetailsStateLoadedCopyWithImpl<$Res>
    extends _$ContentDetailsStateCopyWithImpl<$Res, _$ContentDetailsStateLoaded>
    implements _$$ContentDetailsStateLoadedCopyWith<$Res> {
  __$$ContentDetailsStateLoadedCopyWithImpl(_$ContentDetailsStateLoaded _value,
      $Res Function(_$ContentDetailsStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? data = null,
  }) {
    return _then(_$ContentDetailsStateLoaded(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ContentModel,
    ));
  }
}

/// @nodoc

class _$ContentDetailsStateLoaded implements ContentDetailsStateLoaded {
  const _$ContentDetailsStateLoaded({required this.uuid, required this.data});

  @override
  final UuidValue uuid;
  @override
  final ContentModel data;

  @override
  String toString() {
    return 'ContentDetailsState.loaded(uuid: $uuid, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentDetailsStateLoaded &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentDetailsStateLoadedCopyWith<_$ContentDetailsStateLoaded>
      get copyWith => __$$ContentDetailsStateLoadedCopyWithImpl<
          _$ContentDetailsStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidValue uuid) empty,
    required TResult Function(UuidValue uuid, ContentModel? data) loading,
    required TResult Function(UuidValue uuid, ContentModel data) loaded,
    required TResult Function(UuidValue uuid, String errorMessage) failure,
  }) {
    return loaded(uuid, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidValue uuid)? empty,
    TResult? Function(UuidValue uuid, ContentModel? data)? loading,
    TResult? Function(UuidValue uuid, ContentModel data)? loaded,
    TResult? Function(UuidValue uuid, String errorMessage)? failure,
  }) {
    return loaded?.call(uuid, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidValue uuid)? empty,
    TResult Function(UuidValue uuid, ContentModel? data)? loading,
    TResult Function(UuidValue uuid, ContentModel data)? loaded,
    TResult Function(UuidValue uuid, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(uuid, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentDetailsStateEmpty value) empty,
    required TResult Function(ContentDetailsStateLoading value) loading,
    required TResult Function(ContentDetailsStateLoaded value) loaded,
    required TResult Function(ContentDetailsStateFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContentDetailsStateEmpty value)? empty,
    TResult? Function(ContentDetailsStateLoading value)? loading,
    TResult? Function(ContentDetailsStateLoaded value)? loaded,
    TResult? Function(ContentDetailsStateFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentDetailsStateEmpty value)? empty,
    TResult Function(ContentDetailsStateLoading value)? loading,
    TResult Function(ContentDetailsStateLoaded value)? loaded,
    TResult Function(ContentDetailsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ContentDetailsStateLoaded implements ContentDetailsState {
  const factory ContentDetailsStateLoaded(
      {required final UuidValue uuid,
      required final ContentModel data}) = _$ContentDetailsStateLoaded;

  @override
  UuidValue get uuid;
  ContentModel get data;
  @override
  @JsonKey(ignore: true)
  _$$ContentDetailsStateLoadedCopyWith<_$ContentDetailsStateLoaded>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentDetailsStateFailureCopyWith<$Res>
    implements $ContentDetailsStateCopyWith<$Res> {
  factory _$$ContentDetailsStateFailureCopyWith(
          _$ContentDetailsStateFailure value,
          $Res Function(_$ContentDetailsStateFailure) then) =
      __$$ContentDetailsStateFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UuidValue uuid, String errorMessage});
}

/// @nodoc
class __$$ContentDetailsStateFailureCopyWithImpl<$Res>
    extends _$ContentDetailsStateCopyWithImpl<$Res,
        _$ContentDetailsStateFailure>
    implements _$$ContentDetailsStateFailureCopyWith<$Res> {
  __$$ContentDetailsStateFailureCopyWithImpl(
      _$ContentDetailsStateFailure _value,
      $Res Function(_$ContentDetailsStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? errorMessage = null,
  }) {
    return _then(_$ContentDetailsStateFailure(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentDetailsStateFailure implements ContentDetailsStateFailure {
  const _$ContentDetailsStateFailure(
      {required this.uuid, required this.errorMessage});

  @override
  final UuidValue uuid;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContentDetailsState.failure(uuid: $uuid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentDetailsStateFailure &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentDetailsStateFailureCopyWith<_$ContentDetailsStateFailure>
      get copyWith => __$$ContentDetailsStateFailureCopyWithImpl<
          _$ContentDetailsStateFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidValue uuid) empty,
    required TResult Function(UuidValue uuid, ContentModel? data) loading,
    required TResult Function(UuidValue uuid, ContentModel data) loaded,
    required TResult Function(UuidValue uuid, String errorMessage) failure,
  }) {
    return failure(uuid, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidValue uuid)? empty,
    TResult? Function(UuidValue uuid, ContentModel? data)? loading,
    TResult? Function(UuidValue uuid, ContentModel data)? loaded,
    TResult? Function(UuidValue uuid, String errorMessage)? failure,
  }) {
    return failure?.call(uuid, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidValue uuid)? empty,
    TResult Function(UuidValue uuid, ContentModel? data)? loading,
    TResult Function(UuidValue uuid, ContentModel data)? loaded,
    TResult Function(UuidValue uuid, String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(uuid, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentDetailsStateEmpty value) empty,
    required TResult Function(ContentDetailsStateLoading value) loading,
    required TResult Function(ContentDetailsStateLoaded value) loaded,
    required TResult Function(ContentDetailsStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContentDetailsStateEmpty value)? empty,
    TResult? Function(ContentDetailsStateLoading value)? loading,
    TResult? Function(ContentDetailsStateLoaded value)? loaded,
    TResult? Function(ContentDetailsStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentDetailsStateEmpty value)? empty,
    TResult Function(ContentDetailsStateLoading value)? loading,
    TResult Function(ContentDetailsStateLoaded value)? loaded,
    TResult Function(ContentDetailsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ContentDetailsStateFailure implements ContentDetailsState {
  const factory ContentDetailsStateFailure(
      {required final UuidValue uuid,
      required final String errorMessage}) = _$ContentDetailsStateFailure;

  @override
  UuidValue get uuid;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ContentDetailsStateFailureCopyWith<_$ContentDetailsStateFailure>
      get copyWith => throw _privateConstructorUsedError;
}
