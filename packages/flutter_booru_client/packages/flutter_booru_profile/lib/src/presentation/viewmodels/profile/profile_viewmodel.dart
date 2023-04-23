import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:uuid/uuid.dart';

class ProfileViewModel extends Cubit<ProfileState> {
  ProfileViewModel(
    this._profileRepository, {
    required UuidValue uuid,
    ProfileModel? cachedModel,
  }) : super(ProfileState.empty()) {
    getData(uuid: uuid, cachedModel: cachedModel);
  }

  final ProfileRepository _profileRepository;

  Future<void> getData({
    required UuidValue uuid,
    ProfileModel? cachedModel,
  }) async {
    emit(ProfileState.loading(data: cachedModel));

    final response = await _profileRepository.getProfileByUuid(uuid);
    emit(response.fold(
      (l) => ProfileState.failure(errorMessage: '$l'),
      (r) => ProfileState.loaded(data: r),
    ));
  }
}
