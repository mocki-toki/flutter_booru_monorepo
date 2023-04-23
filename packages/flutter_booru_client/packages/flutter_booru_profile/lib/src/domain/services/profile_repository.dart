import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:fpdart/fpdart.dart';
import 'package:uuid/uuid.dart';

abstract class ProfileRepository {
  Future<Either<Error, ProfileModel>> getProfileForCurrentAccount();

  Future<Either<Error, ProfileModel>> getProfileByUuid(UuidValue uuid);

  Future<Either<Error, ProfileModel>> updateProfileAvatar(ImageFile imageFile);

  Future<Either<Error, ProfileModel>> updateProfileInfo(InputProfileInfoModel newProfileInfo);
}
