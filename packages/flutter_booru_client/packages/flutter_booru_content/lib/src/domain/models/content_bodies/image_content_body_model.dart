import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/content_body_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'image_content_body_model.g.dart';

@JsonSerializable(converters: [
  ImageModelConverter(),
])
class ImageContentBodyModel extends Equatable implements ContentBodyModel {
  const ImageContentBodyModel({
    required this.contentType,
    required this.image,
    required this.previewImage,
  });

  factory ImageContentBodyModel.fromJson(Map<String, dynamic> json) =>
      _$ImageContentBodyModelFromJson(json);

  @override
  @JsonKey(name: 'content_type')
  final ContentType contentType;
  final ImageModel image;
  @JsonKey(name: 'preview_image')
  final ImageModel previewImage;

  @override
  List<Object?> get props => [
        contentType,
        image,
        previewImage,
      ];

  Map<String, dynamic> toJson() => _$ImageContentBodyModelToJson(this);
}
