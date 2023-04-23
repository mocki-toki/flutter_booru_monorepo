// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_viewmodel.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension AccountViewModelFactory on ServiceCollection {
  void addAccountViewModel([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<AccountViewModel>(
      lifetime,
      (provider) => AccountViewModel(
        provider.getRequired<AccountRepository>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<Cubit, AccountViewModel>(true);
      addAlias<BlocBase, AccountViewModel>(true);
      addAlias<StateStreamableSource, AccountViewModel>(true);
      addAlias<StateStreamable, AccountViewModel>(true);
      addAlias<Streamable, AccountViewModel>(true);
      addAlias<Closable, AccountViewModel>(true);
      addAlias<Emittable, AccountViewModel>(true);
      addAlias<ErrorSink, AccountViewModel>(true);
    }
  }
}
