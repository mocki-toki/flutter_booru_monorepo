// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_firestore_provider.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension FirebaseFirestoreProviderFactory on ServiceCollection {
  void addFirebaseFirestoreProvider([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<FirebaseFirestoreProvider>(
      lifetime,
      (provider) => FirebaseFirestoreProvider(
        firebaseApp: provider.getRequired<FirebaseApp>(),
      ),
      true,
    );
  }
}
