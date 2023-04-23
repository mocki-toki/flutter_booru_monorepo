import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_booru_content/src/domain/models/content_model.dart';
import 'package:flutter_booru_content/src/domain/services/content_repository.dart';
import 'package:uuid/uuid.dart';

import 'content_details_state.dart';

class ContentDetailsViewModel extends Cubit<ContentDetailsState> {
  ContentDetailsViewModel(
    this._contentRepository, {
    required UuidValue contentUuid,
    ContentModel? cachedData,
  }) : super(ContentDetailsState.empty(uuid: contentUuid)) {
    _loadData(contentUuid, cachedData: cachedData);
  }

  final ContentRepository _contentRepository;

  Future<void> _loadData(UuidValue contentUuid, {ContentModel? cachedData}) async {
    emit(ContentDetailsState.loading(uuid: contentUuid, data: cachedData));
    final response = await _contentRepository.getContentByUuid(contentUuid);

    if (isClosed) return;
    // TODO: если контент кеширован, то перевести в loaded и показать ошибку боксом
    emit(response.fold(
      (l) => ContentDetailsState.failure(uuid: contentUuid, errorMessage: l.toString()),
      (r) => ContentDetailsState.loaded(uuid: contentUuid, data: r),
    ));
  }
}
