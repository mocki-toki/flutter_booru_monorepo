// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_auth_provider.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension FirebaseAuthProviderFactory on ServiceCollection {
  void addFirebaseAuthProvider([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<FirebaseAuthProvider>(
      lifetime,
      (provider) => FirebaseAuthProvider(
        firebaseApp: provider.getRequired<FirebaseApp>(),
      ),
      true,
    );
  }
}
