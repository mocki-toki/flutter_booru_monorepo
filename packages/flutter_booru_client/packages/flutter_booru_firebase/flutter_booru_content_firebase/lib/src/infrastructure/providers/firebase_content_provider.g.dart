// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_content_provider.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension FirebaseContentProviderFactory on ServiceCollection {
  void addFirebaseContentProvider([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<FirebaseContentProvider>(
      lifetime,
      (provider) => FirebaseContentProvider(
        provider.getRequired<FirebaseFirestore>(),
        provider.getRequired<FirebaseStorage>(),
        provider.getRequired<ProfileProvider>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<ContentProvider, FirebaseContentProvider>(true);
    }
  }
}
