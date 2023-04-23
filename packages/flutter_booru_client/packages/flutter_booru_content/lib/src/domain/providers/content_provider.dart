import 'dart:collection';

import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:uuid/uuid.dart';

abstract class ContentProvider {
  Future<UnmodifiableListView<ContentModel>> getFeed();

  Future<UnmodifiableListView<ContentModel>> getPostsByAuthor(UuidValue authorProfileUuid);

  Future<ContentModel> getContentByUuid(UuidValue uuid);

  Future<ContentModel> uploadContent(ContentBodyModel bodyModel);

  Future<FileWithPreviewModel> uploadFile(ContentFile file);
}
