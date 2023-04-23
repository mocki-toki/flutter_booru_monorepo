import 'package:equatable/equatable.dart';
import 'package:flutter_booru_core/src/domain/models/file_model.dart';
import 'package:flutter_booru_core/src/domain/models/image_model.dart';

class FileWithPreviewModel extends Equatable {
  const FileWithPreviewModel({
    required this.file,
    required this.previewImage,
  });

  final FileModel file;
  final ImageModel previewImage;

  @override
  List<Object?> get props => [file, previewImage];
}
