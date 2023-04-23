import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/widgets.dart';

part 'edit_profile_state.freezed.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.edit({
    required TextEditingController usernameController,
  }) = EditProfileStateEdit;

  const factory EditProfileState.uploading({
    required TextEditingController usernameController,
  }) = EditProfileStateUploading;
}
