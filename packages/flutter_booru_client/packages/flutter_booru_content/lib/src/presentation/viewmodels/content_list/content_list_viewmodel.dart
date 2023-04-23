import 'dart:collection';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_content/src/presentation/viewmodels/content_list/content_list_state.dart';
import 'package:uuid/uuid.dart';
import 'package:fpdart/fpdart.dart';

class ContentListViewModel extends Cubit<ContentListState> {
  ContentListViewModel(
    this._contentService, {
    UuidValue? authorUuid,
  }) : super(const ContentListState.empty()) {
    _getData(authorUuid: authorUuid);
  }

  final ContentRepository _contentService;

  // TODO: отрефакторить, вместо значений принимать наследуемый объект
  Future<void> _getData({UuidValue? authorUuid}) async {
    Either<Error, UnmodifiableListView<ContentModel>> response;

    emit(ContentListState.loading());

    // будет больше комбинаций
    // ignore: prefer-conditional-expressions
    if (authorUuid != null) {
      response = await _contentService.getPostsByAuthor(authorUuid);
    } else {
      response = await _contentService.getFeed();
    }

    response.fold(
      (l) => emit(ContentListState.failure(errorMessage: '$l')),
      (r) => emit(ContentListState.loaded(items: r)),
    );
  }
}
