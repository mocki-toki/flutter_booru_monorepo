import 'package:flutter_booru_account/src/presentation/viewmodels/auth/auth_input_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.unauthorized(
    AuthInputModel authInputModel,
    AuthMethod authMethod,
  ) = AuthStateUnauthorized;

  const factory AuthState.loading(
    AuthInputModel authInputModel,
    AuthMethod authMethod,
  ) = AuthStateLoading;

  const factory AuthState.authorized() = AuthStateAuthorized;
}

enum AuthMethod { login, register }
