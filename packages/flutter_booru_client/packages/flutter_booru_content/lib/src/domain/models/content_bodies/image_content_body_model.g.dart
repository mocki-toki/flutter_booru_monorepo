// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_content_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImageContentBodyModel _$ImageContentBodyModelFromJson(
        Map<String, dynamic> json) =>
    ImageContentBodyModel(
      contentType: $enumDecode(_$ContentTypeEnumMap, json['content_type']),
      image: const ImageModelConverter()
          .fromJson(json['image'] as Map<String, dynamic>),
      previewImage: const ImageModelConverter()
          .fromJson(json['preview_image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ImageContentBodyModelToJson(
        ImageContentBodyModel instance) =>
    <String, dynamic>{
      'content_type': _$ContentTypeEnumMap[instance.contentType]!,
      'image': const ImageModelConverter().toJson(instance.image),
      'preview_image':
          const ImageModelConverter().toJson(instance.previewImage),
    };

const _$ContentTypeEnumMap = {
  ContentType.image: 'image',
  ContentType.video: 'video',
};
