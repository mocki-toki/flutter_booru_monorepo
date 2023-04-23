import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/image_content_body_model.dart';
import 'package:flutter_booru_content/src/domain/models/content_bodies/video_content_body_model.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter/material.dart';

import 'upload_content_state.dart';

class UploadContentViewModel extends Cubit<UploadContentState> {
  UploadContentViewModel(
    this._contentService,
    this._router,
    this._scaffoldMessenger,
  ) : super(const UploadContentState.edit());

  final ContentRepository _contentService;
  final GoRouter _router;
  final ScaffoldMessengerState _scaffoldMessenger;

  void switchContentType(ContentType contentType) {
    emit(state.copyWith(contentType: contentType));
  }

  void resetFile() {
    emit(UploadContentState.edit());
  }

  Future<void> chooseFile() async {
    XFile? file;

    switch (state.contentType) {
      case ContentType.image:
        file = await ImagePicker().pickImage(source: ImageSource.gallery);
        break;
      case ContentType.video:
        file = await ImagePicker().pickVideo(source: ImageSource.gallery);
        break;
    }

    if (file != null) {
      emit(state.copyWith(file: file));
    }
  }

  Future<void> uploadContent() async {
    final file = state.file;
    final contentType = state.contentType;

    if (file == null) {
      _scaffoldMessenger.showSnackBar(
        SnackBar(content: Text('File is not uploaded')),
      );
      return;
    }

    emit(UploadContentState.uploading(contentType: contentType, file: file));

    final uploadFileOrError = await _contentService.uploadFile(
      ContentFile.fromFile(file, contentType: contentType),
    );

    if (uploadFileOrError.isLeft()) {
      final uploadError = uploadFileOrError.getLeft().toNullable()!;
      emit(UploadContentState.edit(file: file));

      _scaffoldMessenger.showSnackBar(
        SnackBar(content: Text('File is not uploaded: $uploadError')),
      );
      return;
    }

    final uploadFile = uploadFileOrError.getRight().toNullable()!;
    ContentBodyModel? contentBodyModel;

    switch (contentType) {
      case ContentType.image:
        contentBodyModel = ImageContentBodyModel(
          contentType: contentType,
          image: uploadFile.file as ImageModel,
          previewImage: uploadFile.previewImage,
        );
        break;
      case ContentType.video:
        contentBodyModel = VideoContentBodyModel(
          contentType: contentType,
          video: uploadFile.file as VideoModel,
          previewImage: uploadFile.previewImage,
        );
        break;
    }

    final uploadContentOrError = await _contentService.uploadContent(contentBodyModel);
    return uploadContentOrError.fold(
      (l) {
        emit(UploadContentState.edit(file: file));

        _scaffoldMessenger.showSnackBar(
          SnackBar(content: Text('File is not uploaded: $l')),
        );
        return;
      },
      (r) => _router.pop(),
    );
  }
}
