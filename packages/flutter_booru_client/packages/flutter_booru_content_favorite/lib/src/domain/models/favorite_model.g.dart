// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FavoriteModel _$FavoriteModelFromJson(Map<String, dynamic> json) =>
    FavoriteModel(
      uuid: const UuidValueConverter().fromJson(json['uuid'] as String),
      contentUuid:
          const UuidValueConverter().fromJson(json['content_uuid'] as String),
      profileUuid:
          const UuidValueConverter().fromJson(json['profile_uuid'] as String),
      value: json['value'] as bool,
    );

Map<String, dynamic> _$FavoriteModelToJson(FavoriteModel instance) =>
    <String, dynamic>{
      'uuid': const UuidValueConverter().toJson(instance.uuid),
      'content_uuid': const UuidValueConverter().toJson(instance.contentUuid),
      'profile_uuid': const UuidValueConverter().toJson(instance.profileUuid),
      'value': instance.value,
    };
