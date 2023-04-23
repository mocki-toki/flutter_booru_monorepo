import 'package:flutter_booru_core/src/domain/entities/typed_file.dart';

class VideoFile extends TypedFile {
  const VideoFile.fromFile(super.value) : super(fileTypes: const ['video']);
}
