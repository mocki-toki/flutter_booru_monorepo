import 'package:flutter_booru_core/src/domain/models/image_model.dart';
import 'package:json_annotation/json_annotation.dart';

class ImageModelConverter implements JsonConverter<ImageModel, Map<String, dynamic>> {
  const ImageModelConverter();

  @override
  ImageModel fromJson(Map<String, dynamic> json) => ImageModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(ImageModel object) => object.toJson();
}
