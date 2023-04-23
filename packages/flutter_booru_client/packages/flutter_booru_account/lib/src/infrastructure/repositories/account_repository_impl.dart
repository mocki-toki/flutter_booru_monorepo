import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_account/src/domain/services/account_repository.dart';
import 'package:pansy_arch/pansy_arch.dart';

import 'package:fpdart/fpdart.dart';

part 'account_repository_impl.g.dart';

@Service(ServiceLifetime.singleton)
class AccountRepositoryImpl implements AccountRepository {
  const AccountRepositoryImpl(this._accountService);

  final AccountService _accountService;

  @override
  Future<Option<Error>> logout() {
    return _accountService.logout().fromDataToOption();
  }

  @override
  Future<Either<Error, AccountModel>> getCurrentUser() {
    return _accountService.getCurrentUser().fromDataToEither();
  }

  @override
  Future<void> deleteAccount() {
    return _accountService.deleteAccount().fromDataToEither();
  }
}
