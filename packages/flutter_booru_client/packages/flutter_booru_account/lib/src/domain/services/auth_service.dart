import 'package:flutter_booru_account/src/domain/entities/email_value.dart';
import 'package:flutter_booru_account/src/domain/entities/password_value.dart';
import 'package:flutter_booru_account/src/domain/models/account_model.dart';

abstract class AuthService {
  Future<AccountModel> register({required EmailValue email, required PasswordValue password});
  Future<AccountModel> login({required EmailValue email, required PasswordValue password});
}
