import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:fpdart/fpdart.dart';
import 'package:pansy_arch/pansy_arch.dart';
import 'package:uuid/uuid.dart';

part 'profile_repository_impl.g.dart';

@Service(ServiceLifetime.singleton)
class ProfileRepositoryImpl implements ProfileRepository {
  const ProfileRepositoryImpl(this._profileProvider);

  final ProfileProvider _profileProvider;

  Future<Either<Error, ProfileModel>> getProfileForCurrentAccount() {
    return _profileProvider.getProfileForCurrentAccount().fromDataToEither();
  }

  Future<Either<Error, ProfileModel>> getProfileByUuid(UuidValue uuid) {
    return _profileProvider.getProfileByUuid(uuid).fromDataToEither();
  }

  @override
  Future<Either<Error, ProfileModel>> updateProfileAvatar(ImageFile imageFile) {
    return _profileProvider.updateProfileAvatar(imageFile).fromDataToEither();
  }

  @override
  Future<Either<Error, ProfileModel>> updateProfileInfo(InputProfileInfoModel newProfileInfo) {
    return _profileProvider.updateProfileInfo(newProfileInfo).fromDataToEither();
  }
}
