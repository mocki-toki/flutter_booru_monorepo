import 'dart:collection';

import 'package:flutter_booru_content/src/domain/entities/content_file.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/content_body_model.dart';
import 'package:flutter_booru_content/src/domain/models/content_model.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

abstract class ContentRepository {
  Future<Either<Error, UnmodifiableListView<ContentModel>>> getFeed();

  Future<Either<Error, UnmodifiableListView<ContentModel>>> getPostsByAuthor(
    UuidValue authorProfileUuid,
  );

  Future<Either<Error, ContentModel>> getContentByUuid(UuidValue uuid);

  Future<Either<Error, ContentModel>> uploadContent(ContentBodyModel model);

  Future<Either<Error, FileWithPreviewModel>> uploadFile(ContentFile file);
}
