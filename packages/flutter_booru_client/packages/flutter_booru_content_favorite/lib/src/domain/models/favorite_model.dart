import 'package:equatable/equatable.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'favorite_model.g.dart';

@JsonSerializable(converters: [
  UuidValueConverter(),
])
class FavoriteModel extends Equatable {
  const FavoriteModel({
    required this.uuid,
    required this.contentUuid,
    required this.profileUuid,
    required this.value,
  });

  factory FavoriteModel.fromJson(Map<String, dynamic> json) => _$FavoriteModelFromJson(json);

  final UuidValue uuid;
  @JsonKey(name: 'content_uuid')
  final UuidValue contentUuid;
  @JsonKey(name: 'profile_uuid')
  final UuidValue profileUuid;
  final bool value;

  @override
  List<Object?> get props => [uuid, contentUuid, profileUuid, value];

  Map<String, dynamic> toJson() => _$FavoriteModelToJson(this);
}
