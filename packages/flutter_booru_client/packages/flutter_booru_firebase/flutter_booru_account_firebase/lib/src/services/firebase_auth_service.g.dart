// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_auth_service.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension FirebaseAuthServiceFactory on ServiceCollection {
  void addFirebaseAuthService([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<FirebaseAuthService>(
      lifetime,
      (provider) => FirebaseAuthService(
        provider.getRequired<FirebaseAuth>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<AuthService, FirebaseAuthService>(true);
    }
  }
}
