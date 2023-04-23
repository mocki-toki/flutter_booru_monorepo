// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_account_service.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension FirebaseAccountServiceFactory on ServiceCollection {
  void addFirebaseAccountService([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<FirebaseAccountService>(
      lifetime,
      (provider) => FirebaseAccountService(
        provider.getRequired<FirebaseAuth>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<AccountService, FirebaseAccountService>(true);
    }
  }
}
