import 'package:flutter_booru_core/src/domain/entities/typed_file.dart';

class ImageFile extends TypedFile {
  const ImageFile.fromFile(super.value) : super(fileTypes: const ['image']);
}
