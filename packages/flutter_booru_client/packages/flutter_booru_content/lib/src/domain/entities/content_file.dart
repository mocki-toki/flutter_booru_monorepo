import 'package:flutter_booru_content/src/domain/models/content_bodies/content_body_model.dart';
import 'package:flutter_booru_core/src/domain/entities/typed_file.dart';

class ContentFile extends TypedFile {
  ContentFile.fromFile(super.value, {required this.contentType})
      : super(fileTypes: ContentType.values.map((e) => e.value));

  final ContentType contentType;
}
