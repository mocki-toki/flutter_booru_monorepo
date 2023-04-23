import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.empty() = ProfileStateEmpty;

  const factory ProfileState.loading({
    ProfileModel? data,
  }) = ProfileStateLoading;

  const factory ProfileState.loaded({
    required ProfileModel data,
  }) = ProfileStateLoaded;

  const factory ProfileState.failure({
    required String errorMessage,
  }) = ProfileStateFailure;
}
