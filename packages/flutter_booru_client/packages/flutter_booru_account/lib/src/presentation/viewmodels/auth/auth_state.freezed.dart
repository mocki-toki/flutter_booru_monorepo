// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthInputModel authInputModel, AuthMethod authMethod)
        unauthorized,
    required TResult Function(
            AuthInputModel authInputModel, AuthMethod authMethod)
        loading,
    required TResult Function() authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        unauthorized,
    TResult? Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        loading,
    TResult? Function()? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        unauthorized,
    TResult Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        loading,
    TResult Function()? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateUnauthorized value) unauthorized,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateAuthorized value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateUnauthorized value)? unauthorized,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateAuthorized value)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateUnauthorized value)? unauthorized,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateAuthorized value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateUnauthorizedCopyWith<$Res> {
  factory _$$AuthStateUnauthorizedCopyWith(_$AuthStateUnauthorized value,
          $Res Function(_$AuthStateUnauthorized) then) =
      __$$AuthStateUnauthorizedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthInputModel authInputModel, AuthMethod authMethod});
}

/// @nodoc
class __$$AuthStateUnauthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateUnauthorized>
    implements _$$AuthStateUnauthorizedCopyWith<$Res> {
  __$$AuthStateUnauthorizedCopyWithImpl(_$AuthStateUnauthorized _value,
      $Res Function(_$AuthStateUnauthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authInputModel = null,
    Object? authMethod = null,
  }) {
    return _then(_$AuthStateUnauthorized(
      null == authInputModel
          ? _value.authInputModel
          : authInputModel // ignore: cast_nullable_to_non_nullable
              as AuthInputModel,
      null == authMethod
          ? _value.authMethod
          : authMethod // ignore: cast_nullable_to_non_nullable
              as AuthMethod,
    ));
  }
}

/// @nodoc

class _$AuthStateUnauthorized implements AuthStateUnauthorized {
  const _$AuthStateUnauthorized(this.authInputModel, this.authMethod);

  @override
  final AuthInputModel authInputModel;
  @override
  final AuthMethod authMethod;

  @override
  String toString() {
    return 'AuthState.unauthorized(authInputModel: $authInputModel, authMethod: $authMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateUnauthorized &&
            (identical(other.authInputModel, authInputModel) ||
                other.authInputModel == authInputModel) &&
            (identical(other.authMethod, authMethod) ||
                other.authMethod == authMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authInputModel, authMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateUnauthorizedCopyWith<_$AuthStateUnauthorized> get copyWith =>
      __$$AuthStateUnauthorizedCopyWithImpl<_$AuthStateUnauthorized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthInputModel authInputModel, AuthMethod authMethod)
        unauthorized,
    required TResult Function(
            AuthInputModel authInputModel, AuthMethod authMethod)
        loading,
    required TResult Function() authorized,
  }) {
    return unauthorized(authInputModel, authMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        unauthorized,
    TResult? Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        loading,
    TResult? Function()? authorized,
  }) {
    return unauthorized?.call(authInputModel, authMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        unauthorized,
    TResult Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        loading,
    TResult Function()? authorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(authInputModel, authMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateUnauthorized value) unauthorized,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateAuthorized value) authorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateUnauthorized value)? unauthorized,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateAuthorized value)? authorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateUnauthorized value)? unauthorized,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class AuthStateUnauthorized implements AuthState {
  const factory AuthStateUnauthorized(
          final AuthInputModel authInputModel, final AuthMethod authMethod) =
      _$AuthStateUnauthorized;

  AuthInputModel get authInputModel;
  AuthMethod get authMethod;
  @JsonKey(ignore: true)
  _$$AuthStateUnauthorizedCopyWith<_$AuthStateUnauthorized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateLoadingCopyWith<$Res> {
  factory _$$AuthStateLoadingCopyWith(
          _$AuthStateLoading value, $Res Function(_$AuthStateLoading) then) =
      __$$AuthStateLoadingCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthInputModel authInputModel, AuthMethod authMethod});
}

/// @nodoc
class __$$AuthStateLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoading>
    implements _$$AuthStateLoadingCopyWith<$Res> {
  __$$AuthStateLoadingCopyWithImpl(
      _$AuthStateLoading _value, $Res Function(_$AuthStateLoading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authInputModel = null,
    Object? authMethod = null,
  }) {
    return _then(_$AuthStateLoading(
      null == authInputModel
          ? _value.authInputModel
          : authInputModel // ignore: cast_nullable_to_non_nullable
              as AuthInputModel,
      null == authMethod
          ? _value.authMethod
          : authMethod // ignore: cast_nullable_to_non_nullable
              as AuthMethod,
    ));
  }
}

/// @nodoc

class _$AuthStateLoading implements AuthStateLoading {
  const _$AuthStateLoading(this.authInputModel, this.authMethod);

  @override
  final AuthInputModel authInputModel;
  @override
  final AuthMethod authMethod;

  @override
  String toString() {
    return 'AuthState.loading(authInputModel: $authInputModel, authMethod: $authMethod)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateLoading &&
            (identical(other.authInputModel, authInputModel) ||
                other.authInputModel == authInputModel) &&
            (identical(other.authMethod, authMethod) ||
                other.authMethod == authMethod));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authInputModel, authMethod);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateLoadingCopyWith<_$AuthStateLoading> get copyWith =>
      __$$AuthStateLoadingCopyWithImpl<_$AuthStateLoading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthInputModel authInputModel, AuthMethod authMethod)
        unauthorized,
    required TResult Function(
            AuthInputModel authInputModel, AuthMethod authMethod)
        loading,
    required TResult Function() authorized,
  }) {
    return loading(authInputModel, authMethod);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        unauthorized,
    TResult? Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        loading,
    TResult? Function()? authorized,
  }) {
    return loading?.call(authInputModel, authMethod);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        unauthorized,
    TResult Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        loading,
    TResult Function()? authorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(authInputModel, authMethod);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateUnauthorized value) unauthorized,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateAuthorized value) authorized,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateUnauthorized value)? unauthorized,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateAuthorized value)? authorized,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateUnauthorized value)? unauthorized,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading(
          final AuthInputModel authInputModel, final AuthMethod authMethod) =
      _$AuthStateLoading;

  AuthInputModel get authInputModel;
  AuthMethod get authMethod;
  @JsonKey(ignore: true)
  _$$AuthStateLoadingCopyWith<_$AuthStateLoading> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateAuthorizedCopyWith<$Res> {
  factory _$$AuthStateAuthorizedCopyWith(_$AuthStateAuthorized value,
          $Res Function(_$AuthStateAuthorized) then) =
      __$$AuthStateAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateAuthorized>
    implements _$$AuthStateAuthorizedCopyWith<$Res> {
  __$$AuthStateAuthorizedCopyWithImpl(
      _$AuthStateAuthorized _value, $Res Function(_$AuthStateAuthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateAuthorized implements AuthStateAuthorized {
  const _$AuthStateAuthorized();

  @override
  String toString() {
    return 'AuthState.authorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            AuthInputModel authInputModel, AuthMethod authMethod)
        unauthorized,
    required TResult Function(
            AuthInputModel authInputModel, AuthMethod authMethod)
        loading,
    required TResult Function() authorized,
  }) {
    return authorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        unauthorized,
    TResult? Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        loading,
    TResult? Function()? authorized,
  }) {
    return authorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        unauthorized,
    TResult Function(AuthInputModel authInputModel, AuthMethod authMethod)?
        loading,
    TResult Function()? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateUnauthorized value) unauthorized,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateAuthorized value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateUnauthorized value)? unauthorized,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateAuthorized value)? authorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateUnauthorized value)? unauthorized,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AuthStateAuthorized implements AuthState {
  const factory AuthStateAuthorized() = _$AuthStateAuthorized;
}
