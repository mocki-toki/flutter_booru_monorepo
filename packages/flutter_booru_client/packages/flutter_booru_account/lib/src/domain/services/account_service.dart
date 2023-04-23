import 'package:flutter_booru_account/src/domain/models/account_model.dart';

abstract class AccountService {
  Future<AccountModel> getCurrentUser();

  Future<void> logout();

  Future<void> deleteAccount();
}
