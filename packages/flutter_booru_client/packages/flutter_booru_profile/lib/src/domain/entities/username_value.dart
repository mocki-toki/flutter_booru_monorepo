import 'package:flutter_booru_core/flutter_booru_core.dart';

class UsernameValue extends Verifiable<String, UsernameValidationResult> {
  const UsernameValue.fromString(super.value);

  @override
  UsernameValidationResult validate() {
    if (value.trim().isEmpty) return UsernameValidationResult.valueIsEmpty;
    if (value.trim().length < 4) return UsernameValidationResult.tooShort;
    if (_checkInvalidFormat()) return UsernameValidationResult.invalidFormat;

    return UsernameValidationResult.valid;
  }

  bool _checkInvalidFormat() {
    const pattern = r'\s|[^a-zA-Z0-9_\-]';
    final regex = RegExp(pattern);

    return regex.hasMatch(value);
  }
}

enum UsernameValidationResult {
  valid,
  valueIsEmpty,
  tooShort,
  invalidFormat,
}
