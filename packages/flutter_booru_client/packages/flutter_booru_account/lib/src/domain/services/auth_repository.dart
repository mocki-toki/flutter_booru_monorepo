import 'package:flutter_booru_account/src/domain/entities/email_value.dart';
import 'package:flutter_booru_account/src/domain/entities/password_value.dart';
import 'package:flutter_booru_account/src/domain/models/account_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class AuthRepository {
  Future<Either<Error, AccountModel>> register({
    required EmailValue email,
    required PasswordValue password,
  });

  Future<Either<Error, AccountModel>> login({
    required EmailValue email,
    required PasswordValue password,
  });
}
