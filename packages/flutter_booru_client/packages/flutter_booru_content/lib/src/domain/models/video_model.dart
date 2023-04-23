import 'package:equatable/equatable.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'video_model.g.dart';

@JsonSerializable(converters: [
  UuidValueConverter(),
])
class VideoModel extends Equatable implements FileModel {
  const VideoModel({
    required this.uuid,
    required this.url,
  });

  factory VideoModel.fromJson(Map<String, dynamic> json) => _$VideoModelFromJson(json);

  @override
  final UuidValue uuid;
  @override
  final Uri url;

  @override
  List<Object?> get props => [uuid, url];

  Map<String, dynamic> toJson() => _$VideoModelToJson(this);
}
