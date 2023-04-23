// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AccountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function(AccountModel accountModel) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function(AccountModel accountModel)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function(AccountModel accountModel)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateUnauthorized value) unauthorized,
    required TResult Function(AccountStateLoading value) loading,
    required TResult Function(AccountStateAuthorized value) authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateUnauthorized value)? unauthorized,
    TResult? Function(AccountStateLoading value)? loading,
    TResult? Function(AccountStateAuthorized value)? authorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateUnauthorized value)? unauthorized,
    TResult Function(AccountStateLoading value)? loading,
    TResult Function(AccountStateAuthorized value)? authorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountStateCopyWith<$Res> {
  factory $AccountStateCopyWith(
          AccountState value, $Res Function(AccountState) then) =
      _$AccountStateCopyWithImpl<$Res, AccountState>;
}

/// @nodoc
class _$AccountStateCopyWithImpl<$Res, $Val extends AccountState>
    implements $AccountStateCopyWith<$Res> {
  _$AccountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AccountStateUnauthorizedCopyWith<$Res> {
  factory _$$AccountStateUnauthorizedCopyWith(_$AccountStateUnauthorized value,
          $Res Function(_$AccountStateUnauthorized) then) =
      __$$AccountStateUnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountStateUnauthorizedCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateUnauthorized>
    implements _$$AccountStateUnauthorizedCopyWith<$Res> {
  __$$AccountStateUnauthorizedCopyWithImpl(_$AccountStateUnauthorized _value,
      $Res Function(_$AccountStateUnauthorized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountStateUnauthorized implements AccountStateUnauthorized {
  const _$AccountStateUnauthorized();

  @override
  String toString() {
    return 'AccountState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateUnauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function(AccountModel accountModel) authorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function(AccountModel accountModel)? authorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function(AccountModel accountModel)? authorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateUnauthorized value) unauthorized,
    required TResult Function(AccountStateLoading value) loading,
    required TResult Function(AccountStateAuthorized value) authorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateUnauthorized value)? unauthorized,
    TResult? Function(AccountStateLoading value)? loading,
    TResult? Function(AccountStateAuthorized value)? authorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateUnauthorized value)? unauthorized,
    TResult Function(AccountStateLoading value)? loading,
    TResult Function(AccountStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class AccountStateUnauthorized implements AccountState {
  const factory AccountStateUnauthorized() = _$AccountStateUnauthorized;
}

/// @nodoc
abstract class _$$AccountStateLoadingCopyWith<$Res> {
  factory _$$AccountStateLoadingCopyWith(_$AccountStateLoading value,
          $Res Function(_$AccountStateLoading) then) =
      __$$AccountStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AccountStateLoadingCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateLoading>
    implements _$$AccountStateLoadingCopyWith<$Res> {
  __$$AccountStateLoadingCopyWithImpl(
      _$AccountStateLoading _value, $Res Function(_$AccountStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AccountStateLoading implements AccountStateLoading {
  const _$AccountStateLoading();

  @override
  String toString() {
    return 'AccountState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AccountStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function(AccountModel accountModel) authorized,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function(AccountModel accountModel)? authorized,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function(AccountModel accountModel)? authorized,
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
    required TResult Function(AccountStateUnauthorized value) unauthorized,
    required TResult Function(AccountStateLoading value) loading,
    required TResult Function(AccountStateAuthorized value) authorized,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateUnauthorized value)? unauthorized,
    TResult? Function(AccountStateLoading value)? loading,
    TResult? Function(AccountStateAuthorized value)? authorized,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateUnauthorized value)? unauthorized,
    TResult Function(AccountStateLoading value)? loading,
    TResult Function(AccountStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AccountStateLoading implements AccountState {
  const factory AccountStateLoading() = _$AccountStateLoading;
}

/// @nodoc
abstract class _$$AccountStateAuthorizedCopyWith<$Res> {
  factory _$$AccountStateAuthorizedCopyWith(_$AccountStateAuthorized value,
          $Res Function(_$AccountStateAuthorized) then) =
      __$$AccountStateAuthorizedCopyWithImpl<$Res>;
  @useResult
  $Res call({AccountModel accountModel});
}

/// @nodoc
class __$$AccountStateAuthorizedCopyWithImpl<$Res>
    extends _$AccountStateCopyWithImpl<$Res, _$AccountStateAuthorized>
    implements _$$AccountStateAuthorizedCopyWith<$Res> {
  __$$AccountStateAuthorizedCopyWithImpl(_$AccountStateAuthorized _value,
      $Res Function(_$AccountStateAuthorized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accountModel = null,
  }) {
    return _then(_$AccountStateAuthorized(
      null == accountModel
          ? _value.accountModel
          : accountModel // ignore: cast_nullable_to_non_nullable
              as AccountModel,
    ));
  }
}

/// @nodoc

class _$AccountStateAuthorized implements AccountStateAuthorized {
  const _$AccountStateAuthorized(this.accountModel);

  @override
  final AccountModel accountModel;

  @override
  String toString() {
    return 'AccountState.authorized(accountModel: $accountModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AccountStateAuthorized &&
            (identical(other.accountModel, accountModel) ||
                other.accountModel == accountModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AccountStateAuthorizedCopyWith<_$AccountStateAuthorized> get copyWith =>
      __$$AccountStateAuthorizedCopyWithImpl<_$AccountStateAuthorized>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
    required TResult Function() loading,
    required TResult Function(AccountModel accountModel) authorized,
  }) {
    return authorized(accountModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
    TResult? Function()? loading,
    TResult? Function(AccountModel accountModel)? authorized,
  }) {
    return authorized?.call(accountModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    TResult Function()? loading,
    TResult Function(AccountModel accountModel)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(accountModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AccountStateUnauthorized value) unauthorized,
    required TResult Function(AccountStateLoading value) loading,
    required TResult Function(AccountStateAuthorized value) authorized,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AccountStateUnauthorized value)? unauthorized,
    TResult? Function(AccountStateLoading value)? loading,
    TResult? Function(AccountStateAuthorized value)? authorized,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AccountStateUnauthorized value)? unauthorized,
    TResult Function(AccountStateLoading value)? loading,
    TResult Function(AccountStateAuthorized value)? authorized,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AccountStateAuthorized implements AccountState {
  const factory AccountStateAuthorized(final AccountModel accountModel) =
      _$AccountStateAuthorized;

  AccountModel get accountModel;
  @JsonKey(ignore: true)
  _$$AccountStateAuthorizedCopyWith<_$AccountStateAuthorized> get copyWith =>
      throw _privateConstructorUsedError;
}
