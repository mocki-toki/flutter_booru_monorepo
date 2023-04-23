// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_account_profile_viewmodel.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension CurrentAccountProfileViewModelFactory on ServiceCollection {
  void addCurrentAccountProfileViewModel([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<CurrentAccountProfileViewModel>(
      lifetime,
      (provider) => CurrentAccountProfileViewModel(
        provider.getRequired<ProfileRepository>(),
        provider.getRequired<AccountViewModel>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<Cubit, CurrentAccountProfileViewModel>(true);
      addAlias<BlocBase, CurrentAccountProfileViewModel>(true);
      addAlias<StateStreamableSource, CurrentAccountProfileViewModel>(true);
      addAlias<StateStreamable, CurrentAccountProfileViewModel>(true);
      addAlias<Streamable, CurrentAccountProfileViewModel>(true);
      addAlias<Closable, CurrentAccountProfileViewModel>(true);
      addAlias<Emittable, CurrentAccountProfileViewModel>(true);
      addAlias<ErrorSink, CurrentAccountProfileViewModel>(true);
    }
  }
}
