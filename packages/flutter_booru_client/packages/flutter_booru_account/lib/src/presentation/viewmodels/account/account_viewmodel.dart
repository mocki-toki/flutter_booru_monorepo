import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_account/src/domain/services/account_repository.dart';
import 'package:dino/dino.dart';

part 'account_viewmodel.g.dart';

@Service(ServiceLifetime.singleton)
class AccountViewModel extends Cubit<AccountState> {
  AccountViewModel(this._accountService) : super(AccountState.unauthorized()) {
    _firstUpdateState();
  }

  final AccountRepository _accountService;

  Future<void> _firstUpdateState() async {
    emit(AccountState.loading());
    (await _accountService.getCurrentUser()).fold(
      (l) => emit(AccountState.unauthorized()),
      (r) => emit(AccountState.authorized(r)),
    );
  }

  void setAccount(AccountModel account) {
    emit(AccountState.authorized(account));
  }

  Future<void> logout() {
    return state.maybeWhen(
      authorized: (_) async {
        await _accountService.logout();
        emit(AccountState.unauthorized());
      },
      orElse: () => throw UnsupportedError(''),
    );
  }

  Future<void> deleteAccount() {
    return state.maybeWhen(
      authorized: (_) async {
        await _accountService.deleteAccount();
        emit(AccountState.unauthorized());
      },
      orElse: () => throw UnsupportedError(''),
    );
  }
}
