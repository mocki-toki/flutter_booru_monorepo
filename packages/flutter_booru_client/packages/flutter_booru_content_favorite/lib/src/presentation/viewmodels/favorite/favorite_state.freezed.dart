// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoriteState {
  UuidValue get contentUuid => throw _privateConstructorUsedError;
  UuidValue get profileUuid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidValue contentUuid, UuidValue profileUuid)
        empty,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)
        loading,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)
        loaded,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidValue contentUuid, UuidValue profileUuid)? empty,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)?
        loading,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)?
        loaded,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)?
        failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidValue contentUuid, UuidValue profileUuid)? empty,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)?
        loading,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)?
        loaded,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)?
        failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteStateEmpty value) empty,
    required TResult Function(FavoriteStateLoading value) loading,
    required TResult Function(FavoriteStateLoaded value) loaded,
    required TResult Function(FavoriteStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteStateEmpty value)? empty,
    TResult? Function(FavoriteStateLoading value)? loading,
    TResult? Function(FavoriteStateLoaded value)? loaded,
    TResult? Function(FavoriteStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteStateEmpty value)? empty,
    TResult Function(FavoriteStateLoading value)? loading,
    TResult Function(FavoriteStateLoaded value)? loaded,
    TResult Function(FavoriteStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FavoriteStateCopyWith<FavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res, FavoriteState>;
  @useResult
  $Res call({UuidValue contentUuid, UuidValue profileUuid});
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res, $Val extends FavoriteState>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentUuid = null,
    Object? profileUuid = null,
  }) {
    return _then(_value.copyWith(
      contentUuid: null == contentUuid
          ? _value.contentUuid
          : contentUuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      profileUuid: null == profileUuid
          ? _value.profileUuid
          : profileUuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FavoriteStateEmptyCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$FavoriteStateEmptyCopyWith(_$FavoriteStateEmpty value,
          $Res Function(_$FavoriteStateEmpty) then) =
      __$$FavoriteStateEmptyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UuidValue contentUuid, UuidValue profileUuid});
}

/// @nodoc
class __$$FavoriteStateEmptyCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateEmpty>
    implements _$$FavoriteStateEmptyCopyWith<$Res> {
  __$$FavoriteStateEmptyCopyWithImpl(
      _$FavoriteStateEmpty _value, $Res Function(_$FavoriteStateEmpty) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentUuid = null,
    Object? profileUuid = null,
  }) {
    return _then(_$FavoriteStateEmpty(
      contentUuid: null == contentUuid
          ? _value.contentUuid
          : contentUuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      profileUuid: null == profileUuid
          ? _value.profileUuid
          : profileUuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
    ));
  }
}

/// @nodoc

class _$FavoriteStateEmpty implements FavoriteStateEmpty {
  const _$FavoriteStateEmpty(
      {required this.contentUuid, required this.profileUuid});

  @override
  final UuidValue contentUuid;
  @override
  final UuidValue profileUuid;

  @override
  String toString() {
    return 'FavoriteState.empty(contentUuid: $contentUuid, profileUuid: $profileUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateEmpty &&
            (identical(other.contentUuid, contentUuid) ||
                other.contentUuid == contentUuid) &&
            (identical(other.profileUuid, profileUuid) ||
                other.profileUuid == profileUuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentUuid, profileUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateEmptyCopyWith<_$FavoriteStateEmpty> get copyWith =>
      __$$FavoriteStateEmptyCopyWithImpl<_$FavoriteStateEmpty>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidValue contentUuid, UuidValue profileUuid)
        empty,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)
        loading,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)
        loaded,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)
        failure,
  }) {
    return empty(contentUuid, profileUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidValue contentUuid, UuidValue profileUuid)? empty,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)?
        loading,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)?
        loaded,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)?
        failure,
  }) {
    return empty?.call(contentUuid, profileUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidValue contentUuid, UuidValue profileUuid)? empty,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)?
        loading,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)?
        loaded,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)?
        failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(contentUuid, profileUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteStateEmpty value) empty,
    required TResult Function(FavoriteStateLoading value) loading,
    required TResult Function(FavoriteStateLoaded value) loaded,
    required TResult Function(FavoriteStateFailure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteStateEmpty value)? empty,
    TResult? Function(FavoriteStateLoading value)? loading,
    TResult? Function(FavoriteStateLoaded value)? loaded,
    TResult? Function(FavoriteStateFailure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteStateEmpty value)? empty,
    TResult Function(FavoriteStateLoading value)? loading,
    TResult Function(FavoriteStateLoaded value)? loaded,
    TResult Function(FavoriteStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class FavoriteStateEmpty implements FavoriteState {
  const factory FavoriteStateEmpty(
      {required final UuidValue contentUuid,
      required final UuidValue profileUuid}) = _$FavoriteStateEmpty;

  @override
  UuidValue get contentUuid;
  @override
  UuidValue get profileUuid;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteStateEmptyCopyWith<_$FavoriteStateEmpty> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteStateLoadingCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$FavoriteStateLoadingCopyWith(_$FavoriteStateLoading value,
          $Res Function(_$FavoriteStateLoading) then) =
      __$$FavoriteStateLoadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data});
}

/// @nodoc
class __$$FavoriteStateLoadingCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateLoading>
    implements _$$FavoriteStateLoadingCopyWith<$Res> {
  __$$FavoriteStateLoadingCopyWithImpl(_$FavoriteStateLoading _value,
      $Res Function(_$FavoriteStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentUuid = null,
    Object? profileUuid = null,
    Object? data = freezed,
  }) {
    return _then(_$FavoriteStateLoading(
      contentUuid: null == contentUuid
          ? _value.contentUuid
          : contentUuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      profileUuid: null == profileUuid
          ? _value.profileUuid
          : profileUuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FavoriteModel?,
    ));
  }
}

/// @nodoc

class _$FavoriteStateLoading implements FavoriteStateLoading {
  const _$FavoriteStateLoading(
      {required this.contentUuid, required this.profileUuid, this.data});

  @override
  final UuidValue contentUuid;
  @override
  final UuidValue profileUuid;
  @override
  final FavoriteModel? data;

  @override
  String toString() {
    return 'FavoriteState.loading(contentUuid: $contentUuid, profileUuid: $profileUuid, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateLoading &&
            (identical(other.contentUuid, contentUuid) ||
                other.contentUuid == contentUuid) &&
            (identical(other.profileUuid, profileUuid) ||
                other.profileUuid == profileUuid) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentUuid, profileUuid, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateLoadingCopyWith<_$FavoriteStateLoading> get copyWith =>
      __$$FavoriteStateLoadingCopyWithImpl<_$FavoriteStateLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidValue contentUuid, UuidValue profileUuid)
        empty,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)
        loading,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)
        loaded,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)
        failure,
  }) {
    return loading(contentUuid, profileUuid, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidValue contentUuid, UuidValue profileUuid)? empty,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)?
        loading,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)?
        loaded,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)?
        failure,
  }) {
    return loading?.call(contentUuid, profileUuid, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidValue contentUuid, UuidValue profileUuid)? empty,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)?
        loading,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)?
        loaded,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)?
        failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(contentUuid, profileUuid, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteStateEmpty value) empty,
    required TResult Function(FavoriteStateLoading value) loading,
    required TResult Function(FavoriteStateLoaded value) loaded,
    required TResult Function(FavoriteStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteStateEmpty value)? empty,
    TResult? Function(FavoriteStateLoading value)? loading,
    TResult? Function(FavoriteStateLoaded value)? loaded,
    TResult? Function(FavoriteStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteStateEmpty value)? empty,
    TResult Function(FavoriteStateLoading value)? loading,
    TResult Function(FavoriteStateLoaded value)? loaded,
    TResult Function(FavoriteStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoriteStateLoading implements FavoriteState {
  const factory FavoriteStateLoading(
      {required final UuidValue contentUuid,
      required final UuidValue profileUuid,
      final FavoriteModel? data}) = _$FavoriteStateLoading;

  @override
  UuidValue get contentUuid;
  @override
  UuidValue get profileUuid;
  FavoriteModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteStateLoadingCopyWith<_$FavoriteStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteStateLoadedCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$FavoriteStateLoadedCopyWith(_$FavoriteStateLoaded value,
          $Res Function(_$FavoriteStateLoaded) then) =
      __$$FavoriteStateLoadedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data});
}

/// @nodoc
class __$$FavoriteStateLoadedCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateLoaded>
    implements _$$FavoriteStateLoadedCopyWith<$Res> {
  __$$FavoriteStateLoadedCopyWithImpl(
      _$FavoriteStateLoaded _value, $Res Function(_$FavoriteStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentUuid = null,
    Object? profileUuid = null,
    Object? data = null,
  }) {
    return _then(_$FavoriteStateLoaded(
      contentUuid: null == contentUuid
          ? _value.contentUuid
          : contentUuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      profileUuid: null == profileUuid
          ? _value.profileUuid
          : profileUuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as FavoriteModel,
    ));
  }
}

/// @nodoc

class _$FavoriteStateLoaded implements FavoriteStateLoaded {
  const _$FavoriteStateLoaded(
      {required this.contentUuid,
      required this.profileUuid,
      required this.data});

  @override
  final UuidValue contentUuid;
  @override
  final UuidValue profileUuid;
  @override
  final FavoriteModel data;

  @override
  String toString() {
    return 'FavoriteState.loaded(contentUuid: $contentUuid, profileUuid: $profileUuid, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateLoaded &&
            (identical(other.contentUuid, contentUuid) ||
                other.contentUuid == contentUuid) &&
            (identical(other.profileUuid, profileUuid) ||
                other.profileUuid == profileUuid) &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentUuid, profileUuid, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateLoadedCopyWith<_$FavoriteStateLoaded> get copyWith =>
      __$$FavoriteStateLoadedCopyWithImpl<_$FavoriteStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidValue contentUuid, UuidValue profileUuid)
        empty,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)
        loading,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)
        loaded,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)
        failure,
  }) {
    return loaded(contentUuid, profileUuid, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidValue contentUuid, UuidValue profileUuid)? empty,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)?
        loading,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)?
        loaded,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)?
        failure,
  }) {
    return loaded?.call(contentUuid, profileUuid, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidValue contentUuid, UuidValue profileUuid)? empty,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)?
        loading,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)?
        loaded,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)?
        failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(contentUuid, profileUuid, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteStateEmpty value) empty,
    required TResult Function(FavoriteStateLoading value) loading,
    required TResult Function(FavoriteStateLoaded value) loaded,
    required TResult Function(FavoriteStateFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteStateEmpty value)? empty,
    TResult? Function(FavoriteStateLoading value)? loading,
    TResult? Function(FavoriteStateLoaded value)? loaded,
    TResult? Function(FavoriteStateFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteStateEmpty value)? empty,
    TResult Function(FavoriteStateLoading value)? loading,
    TResult Function(FavoriteStateLoaded value)? loaded,
    TResult Function(FavoriteStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class FavoriteStateLoaded implements FavoriteState {
  const factory FavoriteStateLoaded(
      {required final UuidValue contentUuid,
      required final UuidValue profileUuid,
      required final FavoriteModel data}) = _$FavoriteStateLoaded;

  @override
  UuidValue get contentUuid;
  @override
  UuidValue get profileUuid;
  FavoriteModel get data;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteStateLoadedCopyWith<_$FavoriteStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteStateFailureCopyWith<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  factory _$$FavoriteStateFailureCopyWith(_$FavoriteStateFailure value,
          $Res Function(_$FavoriteStateFailure) then) =
      __$$FavoriteStateFailureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UuidValue contentUuid, UuidValue profileUuid, String errorMessage});
}

/// @nodoc
class __$$FavoriteStateFailureCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res, _$FavoriteStateFailure>
    implements _$$FavoriteStateFailureCopyWith<$Res> {
  __$$FavoriteStateFailureCopyWithImpl(_$FavoriteStateFailure _value,
      $Res Function(_$FavoriteStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentUuid = null,
    Object? profileUuid = null,
    Object? errorMessage = null,
  }) {
    return _then(_$FavoriteStateFailure(
      contentUuid: null == contentUuid
          ? _value.contentUuid
          : contentUuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      profileUuid: null == profileUuid
          ? _value.profileUuid
          : profileUuid // ignore: cast_nullable_to_non_nullable
              as UuidValue,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FavoriteStateFailure implements FavoriteStateFailure {
  const _$FavoriteStateFailure(
      {required this.contentUuid,
      required this.profileUuid,
      required this.errorMessage});

  @override
  final UuidValue contentUuid;
  @override
  final UuidValue profileUuid;
  @override
  final String errorMessage;

  @override
  String toString() {
    return 'FavoriteState.failure(contentUuid: $contentUuid, profileUuid: $profileUuid, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteStateFailure &&
            (identical(other.contentUuid, contentUuid) ||
                other.contentUuid == contentUuid) &&
            (identical(other.profileUuid, profileUuid) ||
                other.profileUuid == profileUuid) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, contentUuid, profileUuid, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteStateFailureCopyWith<_$FavoriteStateFailure> get copyWith =>
      __$$FavoriteStateFailureCopyWithImpl<_$FavoriteStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UuidValue contentUuid, UuidValue profileUuid)
        empty,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)
        loading,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)
        loaded,
    required TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)
        failure,
  }) {
    return failure(contentUuid, profileUuid, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UuidValue contentUuid, UuidValue profileUuid)? empty,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)?
        loading,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)?
        loaded,
    TResult? Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)?
        failure,
  }) {
    return failure?.call(contentUuid, profileUuid, errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UuidValue contentUuid, UuidValue profileUuid)? empty,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel? data)?
        loading,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, FavoriteModel data)?
        loaded,
    TResult Function(
            UuidValue contentUuid, UuidValue profileUuid, String errorMessage)?
        failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(contentUuid, profileUuid, errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FavoriteStateEmpty value) empty,
    required TResult Function(FavoriteStateLoading value) loading,
    required TResult Function(FavoriteStateLoaded value) loaded,
    required TResult Function(FavoriteStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FavoriteStateEmpty value)? empty,
    TResult? Function(FavoriteStateLoading value)? loading,
    TResult? Function(FavoriteStateLoaded value)? loaded,
    TResult? Function(FavoriteStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FavoriteStateEmpty value)? empty,
    TResult Function(FavoriteStateLoading value)? loading,
    TResult Function(FavoriteStateLoaded value)? loaded,
    TResult Function(FavoriteStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FavoriteStateFailure implements FavoriteState {
  const factory FavoriteStateFailure(
      {required final UuidValue contentUuid,
      required final UuidValue profileUuid,
      required final String errorMessage}) = _$FavoriteStateFailure;

  @override
  UuidValue get contentUuid;
  @override
  UuidValue get profileUuid;
  String get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$FavoriteStateFailureCopyWith<_$FavoriteStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
