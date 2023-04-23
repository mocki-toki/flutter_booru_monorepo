import 'package:flutter_booru_content/src/domain/models/video_model.dart';
import 'package:json_annotation/json_annotation.dart';

class VideoModelConverter implements JsonConverter<VideoModel, Map<String, dynamic>> {
  const VideoModelConverter();

  @override
  VideoModel fromJson(Map<String, dynamic> json) => VideoModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(VideoModel object) => object.toJson();
}
