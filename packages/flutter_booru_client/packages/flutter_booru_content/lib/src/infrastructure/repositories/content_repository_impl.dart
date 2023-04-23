import 'dart:collection';

import 'package:flutter_booru_content/src/domain/entities/content_file.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/content_body_model.dart';
import 'package:flutter_booru_content/src/domain/models/content_model.dart';
import 'package:flutter_booru_content/src/domain/services/content_repository.dart';
import 'package:flutter_booru_content/src/domain/providers/content_provider.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:pansy_arch/pansy_arch.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

part 'content_repository_impl.g.dart';

@Service(ServiceLifetime.singleton)
class ContentRepositoryImpl implements ContentRepository {
  ContentRepositoryImpl(this._contentProvider);

  final ContentProvider _contentProvider;

  @override
  Future<Either<Error, UnmodifiableListView<ContentModel>>> getFeed() {
    return _contentProvider.getFeed().fromDataToEither();
  }

  @override
  Future<Either<Error, UnmodifiableListView<ContentModel>>> getPostsByAuthor(
    UuidValue authorProfileUuid,
  ) {
    return _contentProvider.getPostsByAuthor(authorProfileUuid).fromDataToEither();
  }

  @override
  Future<Either<Error, ContentModel>> getContentByUuid(UuidValue uuid) {
    return _contentProvider.getContentByUuid(uuid).fromDataToEither();
  }

  Future<Either<Error, ContentModel>> uploadContent(ContentBodyModel model) {
    return _contentProvider.uploadContent(model).fromDataToEither();
  }

  Future<Either<Error, FileWithPreviewModel>> uploadFile(ContentFile file) {
    return _contentProvider.uploadFile(file).fromDataToEither();
  }
}
