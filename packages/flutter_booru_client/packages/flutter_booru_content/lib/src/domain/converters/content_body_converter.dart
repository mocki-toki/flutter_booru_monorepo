import 'package:flutter_booru_content/src/domain/models/content_bodies/image_content_body_model.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/video_content_body_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../models/content_bodies/content_body_model.dart';

class ContentBodyConverter implements JsonConverter<ContentBodyModel, Map<String, dynamic>> {
  const ContentBodyConverter();

  @override
  ContentBodyModel fromJson(Map<String, dynamic> json) {
    if (!json.containsKey('content_type')) throw UnsupportedError('invalid data');
    final contentType = ContentType.values.byName(json['content_type']);

    switch (contentType) {
      case ContentType.image:
        return ImageContentBodyModel.fromJson(json);
      case ContentType.video:
        return VideoContentBodyModel.fromJson(json);
    }
  }

  @override
  Map<String, dynamic> toJson(ContentBodyModel object) {
    return object.toJson();
  }
}
