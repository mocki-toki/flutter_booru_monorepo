import 'package:flutter_booru_core/flutter_booru_core.dart';

import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:uuid/uuid.dart';

part '{{model_name}}_model.g.dart';

@JsonSerializable(converters: [
  UuidValueConverter(),
])
class {{model_name.pascalCase()}}Model extends Equatable {
  const {{model_name.pascalCase()}}Model({
    required this.uuid,
  });

  factory {{model_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) => _${{model_name.pascalCase()}}ModelFromJson(json);

  final UuidValue uuid;

  @override
  List<Object?> get props => [uuid];

  Map<String, dynamic> toJson() => _${{model_name.pascalCase()}}ModelToJson(this);
}
