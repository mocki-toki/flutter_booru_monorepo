import 'package:cross_file/cross_file.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/content_body_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_content_state.freezed.dart';

@freezed
class UploadContentState with _$UploadContentState {
  const factory UploadContentState.edit({
    @Default(ContentType.image) ContentType contentType,
    XFile? file,
  }) = UploadContentStateEdit;

  const factory UploadContentState.uploading({
    required ContentType contentType,
    required XFile file,
  }) = UploadContentStateUploading;
}
