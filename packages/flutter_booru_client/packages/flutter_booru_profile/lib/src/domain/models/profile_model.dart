import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:flutter_booru_profile/src/domain/converters/username_value_converter.dart';
import 'package:flutter_booru_profile/src/domain/entities/username_value.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

part 'profile_model.g.dart';

@JsonSerializable(converters: [
  UuidValueConverter(),
  UsernameValueConverter(),
  ImageModelConverter(),
])
class ProfileModel extends Equatable {
  const ProfileModel({
    required this.uuid,
    required this.username,
    required this.avatar,
    required this.previewAvatar,
  });

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

  final UuidValue uuid;
  final UsernameValue username;
  final ImageModel? avatar;
  @JsonKey(name: 'preview_avatar')
  final ImageModel? previewAvatar;

  @override
  List<Object?> get props => [uuid, username, avatar, previewAvatar];

  Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}
