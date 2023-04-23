// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContentListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UnmodifiableListView<ContentModel> items) loaded,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(UnmodifiableListView<ContentModel> items)? loaded,
    TResult? Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UnmodifiableListView<ContentModel> items)? loaded,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentListStateEmpty value) empty,
    required TResult Function(ContentListStateLoading value) loading,
    required TResult Function(ContentListStateLoaded value) loaded,
    required TResult Function(ContentListStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContentListStateEmpty value)? empty,
    TResult? Function(ContentListStateLoading value)? loading,
    TResult? Function(ContentListStateLoaded value)? loaded,
    TResult? Function(ContentListStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentListStateEmpty value)? empty,
    TResult Function(ContentListStateLoading value)? loading,
    TResult Function(ContentListStateLoaded value)? loaded,
    TResult Function(ContentListStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentListStateCopyWith<$Res> {
  factory $ContentListStateCopyWith(
          ContentListState value, $Res Function(ContentListState) then) =
      _$ContentListStateCopyWithImpl<$Res, ContentListState>;
}

/// @nodoc
class _$ContentListStateCopyWithImpl<$Res, $Val extends ContentListState>
    implements $ContentListStateCopyWith<$Res> {
  _$ContentListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ContentListStateEmptyCopyWith<$Res> {
  factory _$$ContentListStateEmptyCopyWith(_$ContentListStateEmpty value,
          $Res Function(_$ContentListStateEmpty) then) =
      __$$ContentListStateEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContentListStateEmptyCopyWithImpl<$Res>
    extends _$ContentListStateCopyWithImpl<$Res, _$ContentListStateEmpty>
    implements _$$ContentListStateEmptyCopyWith<$Res> {
  __$$ContentListStateEmptyCopyWithImpl(_$ContentListStateEmpty _value,
      $Res Function(_$ContentListStateEmpty) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContentListStateEmpty implements ContentListStateEmpty {
  const _$ContentListStateEmpty();

  @override
  String toString() {
    return 'ContentListState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContentListStateEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UnmodifiableListView<ContentModel> items) loaded,
    required TResult Function(String errorMessage) failure,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(UnmodifiableListView<ContentModel> items)? loaded,
    TResult? Function(String errorMessage)? failure,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UnmodifiableListView<ContentModel> items)? loaded,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentListStateEmpty value) empty,
    required TResult Function(ContentListStateLoading value) loading,
    required TResult Function(ContentListStateLoaded value) loaded,
    required TResult Function(ContentListStateFailure value) failure,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContentListStateEmpty value)? empty,
    TResult? Function(ContentListStateLoading value)? loading,
    TResult? Function(ContentListStateLoaded value)? loaded,
    TResult? Function(ContentListStateFailure value)? failure,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentListStateEmpty value)? empty,
    TResult Function(ContentListStateLoading value)? loading,
    TResult Function(ContentListStateLoaded value)? loaded,
    TResult Function(ContentListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class ContentListStateEmpty implements ContentListState {
  const factory ContentListStateEmpty() = _$ContentListStateEmpty;
}

/// @nodoc
abstract class _$$ContentListStateLoadingCopyWith<$Res> {
  factory _$$ContentListStateLoadingCopyWith(_$ContentListStateLoading value,
          $Res Function(_$ContentListStateLoading) then) =
      __$$ContentListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContentListStateLoadingCopyWithImpl<$Res>
    extends _$ContentListStateCopyWithImpl<$Res, _$ContentListStateLoading>
    implements _$$ContentListStateLoadingCopyWith<$Res> {
  __$$ContentListStateLoadingCopyWithImpl(_$ContentListStateLoading _value,
      $Res Function(_$ContentListStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ContentListStateLoading implements ContentListStateLoading {
  const _$ContentListStateLoading();

  @override
  String toString() {
    return 'ContentListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UnmodifiableListView<ContentModel> items) loaded,
    required TResult Function(String errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(UnmodifiableListView<ContentModel> items)? loaded,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UnmodifiableListView<ContentModel> items)? loaded,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentListStateEmpty value) empty,
    required TResult Function(ContentListStateLoading value) loading,
    required TResult Function(ContentListStateLoaded value) loaded,
    required TResult Function(ContentListStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContentListStateEmpty value)? empty,
    TResult? Function(ContentListStateLoading value)? loading,
    TResult? Function(ContentListStateLoaded value)? loaded,
    TResult? Function(ContentListStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentListStateEmpty value)? empty,
    TResult Function(ContentListStateLoading value)? loading,
    TResult Function(ContentListStateLoaded value)? loaded,
    TResult Function(ContentListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ContentListStateLoading implements ContentListState {
  const factory ContentListStateLoading() = _$ContentListStateLoading;
}

/// @nodoc
abstract class _$$ContentListStateLoadedCopyWith<$Res> {
  factory _$$ContentListStateLoadedCopyWith(_$ContentListStateLoaded value,
          $Res Function(_$ContentListStateLoaded) then) =
      __$$ContentListStateLoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({UnmodifiableListView<ContentModel> items});
}

/// @nodoc
class __$$ContentListStateLoadedCopyWithImpl<$Res>
    extends _$ContentListStateCopyWithImpl<$Res, _$ContentListStateLoaded>
    implements _$$ContentListStateLoadedCopyWith<$Res> {
  __$$ContentListStateLoadedCopyWithImpl(_$ContentListStateLoaded _value,
      $Res Function(_$ContentListStateLoaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ContentListStateLoaded(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<ContentModel>,
    ));
  }
}

/// @nodoc

class _$ContentListStateLoaded implements ContentListStateLoaded {
  const _$ContentListStateLoaded({required this.items});

  @override
  final UnmodifiableListView<ContentModel> items;

  @override
  String toString() {
    return 'ContentListState.loaded(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentListStateLoaded &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentListStateLoadedCopyWith<_$ContentListStateLoaded> get copyWith =>
      __$$ContentListStateLoadedCopyWithImpl<_$ContentListStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UnmodifiableListView<ContentModel> items) loaded,
    required TResult Function(String errorMessage) failure,
  }) {
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(UnmodifiableListView<ContentModel> items)? loaded,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UnmodifiableListView<ContentModel> items)? loaded,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentListStateEmpty value) empty,
    required TResult Function(ContentListStateLoading value) loading,
    required TResult Function(ContentListStateLoaded value) loaded,
    required TResult Function(ContentListStateFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContentListStateEmpty value)? empty,
    TResult? Function(ContentListStateLoading value)? loading,
    TResult? Function(ContentListStateLoaded value)? loaded,
    TResult? Function(ContentListStateFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentListStateEmpty value)? empty,
    TResult Function(ContentListStateLoading value)? loading,
    TResult Function(ContentListStateLoaded value)? loaded,
    TResult Function(ContentListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ContentListStateLoaded implements ContentListState {
  const factory ContentListStateLoaded(
          {required final UnmodifiableListView<ContentModel> items}) =
      _$ContentListStateLoaded;

  UnmodifiableListView<ContentModel> get items;
  @JsonKey(ignore: true)
  _$$ContentListStateLoadedCopyWith<_$ContentListStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ContentListStateFailureCopyWith<$Res> {
  factory _$$ContentListStateFailureCopyWith(_$ContentListStateFailure value,
          $Res Function(_$ContentListStateFailure) then) =
      __$$ContentListStateFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$ContentListStateFailureCopyWithImpl<$Res>
    extends _$ContentListStateCopyWithImpl<$Res, _$ContentListStateFailure>
    implements _$$ContentListStateFailureCopyWith<$Res> {
  __$$ContentListStateFailureCopyWithImpl(_$ContentListStateFailure _value,
      $Res Function(_$ContentListStateFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$ContentListStateFailure(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ContentListStateFailure implements ContentListStateFailure {
  const _$ContentListStateFailure({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'ContentListState.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentListStateFailure &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentListStateFailureCopyWith<_$ContentListStateFailure> get copyWith =>
      __$$ContentListStateFailureCopyWithImpl<_$ContentListStateFailure>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() empty,
    required TResult Function() loading,
    required TResult Function(UnmodifiableListView<ContentModel> items) loaded,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? empty,
    TResult? Function()? loading,
    TResult? Function(UnmodifiableListView<ContentModel> items)? loaded,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? empty,
    TResult Function()? loading,
    TResult Function(UnmodifiableListView<ContentModel> items)? loaded,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContentListStateEmpty value) empty,
    required TResult Function(ContentListStateLoading value) loading,
    required TResult Function(ContentListStateLoaded value) loaded,
    required TResult Function(ContentListStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ContentListStateEmpty value)? empty,
    TResult? Function(ContentListStateLoading value)? loading,
    TResult? Function(ContentListStateLoaded value)? loaded,
    TResult? Function(ContentListStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContentListStateEmpty value)? empty,
    TResult Function(ContentListStateLoading value)? loading,
    TResult Function(ContentListStateLoaded value)? loaded,
    TResult Function(ContentListStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ContentListStateFailure implements ContentListState {
  const factory ContentListStateFailure({required final String errorMessage}) =
      _$ContentListStateFailure;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$ContentListStateFailureCopyWith<_$ContentListStateFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
