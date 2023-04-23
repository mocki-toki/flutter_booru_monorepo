import 'package:equatable/equatable.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'image_model.g.dart';

@JsonSerializable(converters: [
  UuidValueConverter(),
])
class ImageModel extends Equatable implements FileModel {
  const ImageModel({
    required this.uuid,
    required this.url,
    required this.width,
    required this.height,
  });

  factory ImageModel.fromJson(Map<String, dynamic> json) => _$ImageModelFromJson(json);

  @override
  final UuidValue uuid;
  @override
  final Uri url;
  final int width;
  final int height;

  @override
  List<Object?> get props => [uuid, url, width, height];

  Map<String, dynamic> toJson() => _$ImageModelToJson(this);
}
