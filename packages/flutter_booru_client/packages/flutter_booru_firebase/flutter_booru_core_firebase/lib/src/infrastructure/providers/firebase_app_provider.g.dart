// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firebase_app_provider.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension FirebaseAppProviderFactory on ServiceCollection {
  void addFirebaseAppProvider([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<FirebaseAppProvider>(
      lifetime,
      (provider) => FirebaseAppProvider(),
      true,
    );

    if (registerAliases) {
      addAlias<Initializable, FirebaseAppProvider>(true);
    }
  }
}
