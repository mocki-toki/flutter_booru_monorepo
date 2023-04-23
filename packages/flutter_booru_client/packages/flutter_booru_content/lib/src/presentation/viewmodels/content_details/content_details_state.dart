import 'package:flutter_booru_content/src/domain/models/content_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'content_details_state.freezed.dart';

@freezed
class ContentDetailsState with _$ContentDetailsState {
  const factory ContentDetailsState.empty({
    required UuidValue uuid,
  }) = ContentDetailsStateEmpty;

  const factory ContentDetailsState.loading({
    required UuidValue uuid,
    ContentModel? data,
  }) = ContentDetailsStateLoading;

  const factory ContentDetailsState.loaded({
    required UuidValue uuid,
    required ContentModel data,
  }) = ContentDetailsStateLoaded;

  const factory ContentDetailsState.failure({
    required UuidValue uuid,
    required String errorMessage,
  }) = ContentDetailsStateFailure;
}
