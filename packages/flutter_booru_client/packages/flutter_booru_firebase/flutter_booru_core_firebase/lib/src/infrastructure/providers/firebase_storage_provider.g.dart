// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_storage_provider.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension FirebaseStorageProviderFactory on ServiceCollection {
  void addFirebaseStorageProvider([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<FirebaseStorageProvider>(
      lifetime,
      (provider) => FirebaseStorageProvider(
        firebaseApp: provider.getRequired<FirebaseApp>(),
      ),
      true,
    );
  }
}
