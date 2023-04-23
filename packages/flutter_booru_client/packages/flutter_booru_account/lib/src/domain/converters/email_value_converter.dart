import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:json_annotation/json_annotation.dart';

class EmailValueConverter implements JsonConverter<EmailValue, String> {
  const EmailValueConverter();

  @override
  EmailValue fromJson(String json) => EmailValue.fromString(json);

  @override
  String toJson(EmailValue object) => object.toString();
}
