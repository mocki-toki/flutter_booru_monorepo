import 'package:flutter_booru_profile/src/domain/entities/username_value.dart';
import 'package:json_annotation/json_annotation.dart';

class UsernameValueConverter implements JsonConverter<UsernameValue, String> {
  const UsernameValueConverter();

  @override
  UsernameValue fromJson(String json) {
    return UsernameValue.fromString(json);
  }

  @override
  String toJson(UsernameValue object) => '$object';
}
