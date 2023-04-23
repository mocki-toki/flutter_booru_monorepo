// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_repository_impl.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension ProfileRepositoryImplFactory on ServiceCollection {
  void addProfileRepositoryImpl([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<ProfileRepositoryImpl>(
      lifetime,
      (provider) => ProfileRepositoryImpl(
        provider.getRequired<ProfileProvider>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<ProfileRepository, ProfileRepositoryImpl>(true);
    }
  }
}
