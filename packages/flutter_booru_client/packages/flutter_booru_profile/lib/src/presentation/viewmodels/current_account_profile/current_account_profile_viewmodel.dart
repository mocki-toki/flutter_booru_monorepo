import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:pansy_arch/pansy_arch.dart';

part 'current_account_profile_viewmodel.g.dart';

@Service(ServiceLifetime.singleton)
class CurrentAccountProfileViewModel extends Cubit<ProfileState> {
  CurrentAccountProfileViewModel(this._profileRepository, AccountViewModel _accountViewModel)
      : super(const ProfileState.empty()) {
    _syncWithAccountState(_accountViewModel.state);
    _accountSubscription = _accountViewModel.stream.listen(_syncWithAccountState);
  }

  final ProfileRepository _profileRepository;
  StreamSubscription<AccountState>? _accountSubscription;

  @override
  Future<void> close() async {
    await _accountSubscription?.cancel();
    return super.close();
  }

  Future<void> reload() async {
    emit(ProfileState.loading());
    final response = await _profileRepository.getProfileForCurrentAccount();

    if (isClosed) return;
    emit(response.fold(
      (l) => ProfileState.failure(errorMessage: l.toString()),
      (r) => ProfileState.loaded(data: r),
    ));
  }

  void _clear() {
    emit(ProfileState.empty());
  }

  void _syncWithAccountState(AccountState state) {
    state.mapOrNull(
      authorized: (_) => reload(),
      unauthorized: (_) => _clear(),
    );
  }
}
