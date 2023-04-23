import 'package:json_annotation/json_annotation.dart';

abstract class ContentBodyModel {
  const ContentBodyModel({required this.contentType});

  final ContentType contentType;

  Map<String, dynamic> toJson();
}

@JsonEnum()
enum ContentType {
  image('image'),
  video('video');

  const ContentType(this.value);

  final String value;
}
