// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_repository_impl.dart';

// **************************************************************************
// Dino Generator
// **************************************************************************

extension ContentRepositoryImplFactory on ServiceCollection {
  void addContentRepositoryImpl([
    ServiceLifetime lifetime = ServiceLifetime.singleton,
    bool registerAliases = true,
  ]) {
    addFactory<ContentRepositoryImpl>(
      lifetime,
      (provider) => ContentRepositoryImpl(
        provider.getRequired<ContentProvider>(),
      ),
      true,
    );

    if (registerAliases) {
      addAlias<ContentRepository, ContentRepositoryImpl>(true);
    }
  }
}
