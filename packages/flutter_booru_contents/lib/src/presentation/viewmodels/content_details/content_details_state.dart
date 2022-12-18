import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_details_state.freezed.dart';

@freezed
class ContentDetailsState with _$ContentDetailsState {
  const factory ContentDetailsState.empty() = ContentDetailsStateEmpty;

  const factory ContentDetailsState.loading() = ContentDetailsStateLoading;

  const factory ContentDetailsState.loaded() = ContentDetailsStateLoaded;

  const factory ContentDetailsState.failure() = ContentDetailsStateFailure;
}
