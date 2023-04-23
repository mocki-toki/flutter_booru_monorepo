import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_account/src/domain/services/auth_repository.dart';
import 'package:flutter_booru_account/src/presentation/viewmodels/auth/auth_input_model.dart';
import 'package:flutter_booru_account/src/presentation/viewmodels/auth/auth_state.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter/material.dart';

final _defaultState = AuthStateUnauthorized(AuthInputModel(), AuthMethod.login);

class AuthViewModel extends Cubit<AuthState> {
  AuthViewModel(
    this._authService,
    this._scaffoldMessenger,
    this._accountViewModel,
  ) : super(_defaultState) {
    _syncWithAccountState(_accountViewModel.state);
  }

  final AuthRepository _authService;
  final ScaffoldMessengerState _scaffoldMessenger;
  final AccountViewModel _accountViewModel;

  @override
  Future<void> close() async {
    state.mapOrNull(
      loading: (value) => value.authInputModel.clear(),
      unauthorized: (value) => value.authInputModel.clear(),
    );

    return super.close();
  }

  void switchAuthMethod(AuthMethod authMethod) {
    state.maybeWhen(
      unauthorized: (authInputModel, _) => emit(AuthState.unauthorized(authInputModel, authMethod)),
      orElse: () => throw UnsupportedError(''),
    );
  }

  Future<void> authorize() async {
    return state.maybeWhen<void>(
      unauthorized: (authInputModel, authMethod) async {
        emit(AuthState.loading(authInputModel, authMethod));

        final email = EmailValue.fromString(authInputModel.emailController.text);
        final password = PasswordValue.fromString(authInputModel.passwordController.text);

        final emailValidationResult = email.validate();
        final passwordValidationResult = password.validate();

        if (emailValidationResult != EmailValidationResult.valid) {
          emit(AuthState.unauthorized(authInputModel, authMethod));

          _scaffoldMessenger.showSnackBar(
            SnackBar(content: Text('Email is not valid')),
          );
          return;
        }

        if (passwordValidationResult != PasswordValidationResult.valid) {
          emit(AuthState.unauthorized(authInputModel, authMethod));

          _scaffoldMessenger.showSnackBar(
            SnackBar(content: Text('Password is not valid')),
          );
          return;
        }

        final Either<Error, AccountModel> result;
        switch (authMethod) {
          case AuthMethod.login:
            result = await _authService.login(email: email, password: password);
            break;
          case AuthMethod.register:
            result = await _authService.register(email: email, password: password);
            break;
        }

        return result.fold(
          (l) {
            emit(AuthState.unauthorized(authInputModel, authMethod));
            _scaffoldMessenger.showSnackBar(
              SnackBar(content: Text('Auth error: $l')),
            );
          },
          (r) {
            emit(AuthState.authorized());
            _accountViewModel.setAccount(r);
          },
        );
      },
      orElse: () => throw UnsupportedError(''),
    );
  }

  void _syncWithAccountState(AccountState state) {
    final newState = state.mapOrNull(
      authorized: (_) => AuthState.authorized(),
      unauthorized: (_) => _defaultState,
    );

    if (newState != null) emit(newState);
  }
}
