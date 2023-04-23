// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository_impl.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension AuthRepositoryImplFactory on ServiceCollection {
  void addAuthRepositoryImpl([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<AuthRepositoryImpl>(
      lifetime,
      (provider) => AuthRepositoryImpl(
        provider.getRequired<AuthService>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<AuthRepository, AuthRepositoryImpl>(true);
    }
  }
}
