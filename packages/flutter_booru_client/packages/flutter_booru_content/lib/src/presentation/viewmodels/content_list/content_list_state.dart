import 'dart:collection';

import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_list_state.freezed.dart';

@freezed
class ContentListState with _$ContentListState {
  const factory ContentListState.empty() = ContentListStateEmpty;

  const factory ContentListState.loading() = ContentListStateLoading;

  const factory ContentListState.loaded({
    required UnmodifiableListView<ContentModel> items,
  }) = ContentListStateLoaded;

  const factory ContentListState.failure({
    required String errorMessage,
  }) = ContentListStateFailure;
}
