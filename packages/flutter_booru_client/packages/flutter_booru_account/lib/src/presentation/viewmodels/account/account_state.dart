import 'package:flutter_booru_account/src/domain/models/account_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.unauthorized() = AccountStateUnauthorized;

  const factory AccountState.loading() = AccountStateLoading;

  const factory AccountState.authorized(
    AccountModel accountModel,
  ) = AccountStateAuthorized;
}
