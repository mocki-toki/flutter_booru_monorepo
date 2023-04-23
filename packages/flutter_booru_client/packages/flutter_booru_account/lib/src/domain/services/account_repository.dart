import 'package:flutter_booru_account/src/domain/models/account_model.dart';
import 'package:fpdart/fpdart.dart';

abstract class AccountRepository {
  Future<Either<Error, AccountModel>> getCurrentUser();

  Future<void> logout();

  Future<void> deleteAccount();
}
