import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

class UuidValueConverter implements JsonConverter<UuidValue, String> {
  const UuidValueConverter();

  @override
  UuidValue fromJson(String json) {
    return UuidValue(json, false);
  }

  @override
  String toJson(UuidValue object) => '$object';
}
