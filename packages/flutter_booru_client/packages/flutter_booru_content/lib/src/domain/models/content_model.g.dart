// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentModel _$ContentModelFromJson(Map<String, dynamic> json) => ContentModel(
      uuid: const UuidValueConverter().fromJson(json['uuid'] as String),
      created: const DateTimeConverter().fromJson(json['created'] as int),
      updated: const DateTimeConverter().fromJson(json['updated'] as int),
      authorProfileUuid: const UuidValueConverter()
          .fromJson(json['author_profile_uuid'] as String),
      body: const ContentBodyConverter()
          .fromJson(json['body'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContentModelToJson(ContentModel instance) =>
    <String, dynamic>{
      'uuid': const UuidValueConverter().toJson(instance.uuid),
      'created': const DateTimeConverter().toJson(instance.created),
      'updated': const DateTimeConverter().toJson(instance.updated),
      'author_profile_uuid':
          const UuidValueConverter().toJson(instance.authorProfileUuid),
      'body': const ContentBodyConverter().toJson(instance.body),
    };
