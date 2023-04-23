// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_profile_provider.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension FirebaseProfileProviderFactory on ServiceCollection {
  void addFirebaseProfileProvider([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<FirebaseProfileProvider>(
      lifetime,
      (provider) => FirebaseProfileProvider(
        provider.getRequired<FirebaseAuth>(),
        provider.getRequired<FirebaseFirestore>(),
        provider.getRequired<FirebaseStorage>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<ProfileProvider, FirebaseProfileProvider>(true);
    }
  }
}
