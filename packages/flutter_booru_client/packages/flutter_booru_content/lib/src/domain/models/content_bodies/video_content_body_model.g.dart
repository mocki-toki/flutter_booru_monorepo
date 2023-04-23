// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_content_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoContentBodyModel _$VideoContentBodyModelFromJson(
        Map<String, dynamic> json) =>
    VideoContentBodyModel(
      contentType: $enumDecode(_$ContentTypeEnumMap, json['content_type']),
      video: const VideoModelConverter()
          .fromJson(json['video'] as Map<String, dynamic>),
      previewImage: const ImageModelConverter()
          .fromJson(json['preview_image'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VideoContentBodyModelToJson(
        VideoContentBodyModel instance) =>
    <String, dynamic>{
      'content_type': _$ContentTypeEnumMap[instance.contentType]!,
      'video': const VideoModelConverter().toJson(instance.video),
      'preview_image':
          const ImageModelConverter().toJson(instance.previewImage),
    };

const _$ContentTypeEnumMap = {
  ContentType.image: 'image',
  ContentType.video: 'video',
};
