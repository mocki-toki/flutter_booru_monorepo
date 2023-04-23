import 'package:flutter_booru_content/src/domain/converters/video_model_converter.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/content_body_model.dart';
import 'package:flutter_booru_content/src/domain/models/video_model.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'video_content_body_model.g.dart';

@JsonSerializable(converters: [
  VideoModelConverter(),
  ImageModelConverter(),
])
class VideoContentBodyModel extends Equatable implements ContentBodyModel {
  const VideoContentBodyModel({
    required this.contentType,
    required this.video,
    required this.previewImage,
  });

  factory VideoContentBodyModel.fromJson(Map<String, dynamic> json) =>
      _$VideoContentBodyModelFromJson(json);

  @override
  @JsonKey(name: 'content_type')
  final ContentType contentType;
  final VideoModel video;
  @JsonKey(name: 'preview_image')
  final ImageModel previewImage;

  @override
  List<Object?> get props => [contentType, video, previewImage];

  Map<String, dynamic> toJson() => _$VideoContentBodyModelToJson(this);
}
