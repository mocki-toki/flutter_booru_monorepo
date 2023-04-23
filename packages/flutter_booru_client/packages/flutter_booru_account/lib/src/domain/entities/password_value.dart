import 'package:flutter_booru_core/flutter_booru_core.dart';

class PasswordValue extends Verifiable<String, PasswordValidationResult> {
  const PasswordValue.fromString(super.value);

  @override
  PasswordValidationResult validate() {
    if (value.trim().isEmpty) return PasswordValidationResult.valueIsEmpty;
    if (value.length < 8) return PasswordValidationResult.tooShort;

    return PasswordValidationResult.valid;
  }
}

enum PasswordValidationResult {
  valid,
  valueIsEmpty,
  tooShort,
}
