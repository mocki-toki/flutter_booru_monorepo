import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:uuid/uuid.dart';

abstract class ProfileProvider {
  Future<ProfileModel> getProfileForCurrentAccount();

  Future<ProfileModel> getProfileByUuid(UuidValue uuid);

  Future<ProfileModel> updateProfileAvatar(ImageFile imageFile);

  Future<ProfileModel> updateProfileInfo(InputProfileInfoModel newProfileInfo);
}
