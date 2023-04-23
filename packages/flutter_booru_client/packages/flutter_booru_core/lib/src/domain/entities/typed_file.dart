import 'package:cross_file/cross_file.dart';
import 'package:mime/mime.dart';
import 'package:flutter_booru_core/src/domain/entities/verifiable.dart';

class TypedFile extends Verifiable<XFile, TypedFileValidationResult> {
  const TypedFile(super.value, {required this.fileTypes});

  final Iterable<String> fileTypes;

  @override
  TypedFileValidationResult validate() {
    final mimeType = lookupMimeType(value.path)!;
    var fileType = mimeType.split('/').first;

    return fileTypes.contains(fileType)
        ? TypedFileValidationResult.valid
        : TypedFileValidationResult.invalid;
  }
}

enum TypedFileValidationResult {
  valid,
  invalid,
}
