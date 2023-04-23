import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_content/src/domain/converters/content_body_converter.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:equatable/equatable.dart';

part 'content_model.g.dart';

@JsonSerializable(converters: [
  UuidValueConverter(),
  DateTimeConverter(),
  ContentBodyConverter(),
])
class ContentModel extends Equatable {
  const ContentModel({
    required this.uuid,
    required this.created,
    required this.updated,
    required this.authorProfileUuid,
    required this.body,
  });

  factory ContentModel.fromJson(Map<String, dynamic> json) => _$ContentModelFromJson(json);

  final UuidValue uuid;
  final DateTime created;
  final DateTime updated;
  @JsonKey(name: 'author_profile_uuid')
  final UuidValue authorProfileUuid;
  final ContentBodyModel body;

  Map<String, dynamic> toJson() => _$ContentModelToJson(this);

  @override
  List<Object?> get props => [
        uuid,
        created,
        updated,
        authorProfileUuid,
        body,
      ];
}
