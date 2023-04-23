import 'package:flutter_booru_content_favorite/src/domain/models/favorite_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'favorite_state.freezed.dart';

@freezed
class FavoriteState with _$FavoriteState {
  const factory FavoriteState.empty({
    required UuidValue contentUuid,
    required UuidValue profileUuid,
  }) = FavoriteStateEmpty;

  const factory FavoriteState.loading({
    required UuidValue contentUuid,
    required UuidValue profileUuid,
    FavoriteModel? data,
  }) = FavoriteStateLoading;

  const factory FavoriteState.loaded({
    required UuidValue contentUuid,
    required UuidValue profileUuid,
    required FavoriteModel data,
  }) = FavoriteStateLoaded;

  const factory FavoriteState.failure({
    required UuidValue contentUuid,
    required UuidValue profileUuid,
    required String errorMessage,
  }) = FavoriteStateFailure;
}
