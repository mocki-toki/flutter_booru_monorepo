// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageModel _$ImageModelFromJson(Map<String, dynamic> json) => ImageModel(
      uuid: const UuidValueConverter().fromJson(json['uuid'] as String),
      url: Uri.parse(json['url'] as String),
      width: json['width'] as int,
      height: json['height'] as int,
    );

Map<String, dynamic> _$ImageModelToJson(ImageModel instance) =>
    <String, dynamic>{
      'uuid': const UuidValueConverter().toJson(instance.uuid),
      'url': instance.url.toString(),
      'width': instance.width,
      'height': instance.height,
    };
