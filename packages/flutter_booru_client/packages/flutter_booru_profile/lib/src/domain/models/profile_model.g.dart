// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      uuid: const UuidValueConverter().fromJson(json['uuid'] as String),
      username:
          const UsernameValueConverter().fromJson(json['username'] as String),
      avatar: _$JsonConverterFromJson<Map<String, dynamic>, ImageModel>(
          json['avatar'], const ImageModelConverter().fromJson),
      previewAvatar: _$JsonConverterFromJson<Map<String, dynamic>, ImageModel>(
          json['preview_avatar'], const ImageModelConverter().fromJson),
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'uuid': const UuidValueConverter().toJson(instance.uuid),
      'username': const UsernameValueConverter().toJson(instance.username),
      'avatar': _$JsonConverterToJson<Map<String, dynamic>, ImageModel>(
          instance.avatar, const ImageModelConverter().toJson),
      'preview_avatar': _$JsonConverterToJson<Map<String, dynamic>, ImageModel>(
          instance.previewAvatar, const ImageModelConverter().toJson),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
