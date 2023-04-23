import 'dart:async';

import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:uuid/uuid.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image/image.dart' as img;
import 'package:pansy_arch/pansy_arch.dart';

part 'firebase_profile_provider.g.dart';

@Service(ServiceLifetime.singleton)
class FirebaseProfileProvider implements ProfileProvider {
  FirebaseProfileProvider(
    this._firebaseAuth,
    this._firebaseFirestore,
    this._firebaseStorage,
  );

  FirebaseAuth _firebaseAuth;
  FirebaseFirestore _firebaseFirestore;
  FirebaseStorage _firebaseStorage;

  Future<ProfileModel> getProfileForCurrentAccount() async {
    if (_firebaseAuth.currentUser == null) throw UnsupportedError('');
    final accountUuid = _firebaseAuth.currentUser!.uid;

    final response = await _firebaseFirestore
        .collection('accounts_profiles')
        .where('account_uuid', isEqualTo: accountUuid)
        .get();

    if (!response.docs.isEmpty) {
      final profileUuid = UuidValue(response.docs.first.get('profile_uuid'));
      return getProfileByUuid(profileUuid);
    } else {
      final profileUuid = Uuid().v4obj();
      final profileModel = ProfileModel(
        uuid: profileUuid,
        username: UsernameValue.fromString('anonymous'),
        avatar: null,
        previewAvatar: null,
      );

      await _updateProfile(profileModel);

      await _firebaseFirestore.collection('accounts_profiles').add({
        'account_uuid': accountUuid,
        'profile_uuid': '$profileUuid',
      });

      return profileModel;
    }
  }

  Future<void> _updateProfile(ProfileModel updatedProfile) {
    return _firebaseFirestore
        .collection('profiles')
        .doc('${updatedProfile.uuid}')
        .set(_modelToJson(updatedProfile));
  }

  Future<ProfileModel> getProfileByUuid(UuidValue uuid) async {
    final response = await _firebaseFirestore.collection('profiles').doc('$uuid').get();

    if (response.exists) {
      return _modelFromJson(uuid, response.data()!);
    } else {
      throw UnimplementedError();
    }
  }

  Map<String, dynamic> _modelToJson(ProfileModel model) {
    var json = model.toJson();
    json.remove('uuid');

    return json;
  }

  ProfileModel _modelFromJson(UuidValue uuid, Map<String, dynamic> json) {
    json.putIfAbsent('uuid', () => '$uuid');

    return ProfileModel.fromJson(json);
  }

  @override
  Future<ProfileModel> updateProfileAvatar(ImageFile imageFile) async {
    if (imageFile.validate() != TypedFileValidationResult.valid) throw Error();

    final profile = await getProfileForCurrentAccount();
    if (profile.avatar != null) {
      unawaited(_removeAvatarFile(profile.avatar!, profile.previewAvatar!));
    }

    final fileWithPreview = await _uploadAvatarFile(imageFile);

    final updatedProfile = ProfileModel(
      uuid: profile.uuid,
      username: profile.username,
      avatar: fileWithPreview.file as ImageModel,
      previewAvatar: fileWithPreview.previewImage,
    );

    await _updateProfile(updatedProfile);
    return updatedProfile;
  }

  Future<FileWithPreviewModel> _uploadAvatarFile(ImageFile imageFile) async {
    final file = imageFile.value;
    final avatarsDirectoryRef = _firebaseStorage.ref('avatars');

    final fileBytes = await file.readAsBytes();
    final fileExtension = file.name.split('.').last;

    final decodedImage = img.decodeImage(fileBytes)!;

    final width = decodedImage.width;
    final height = decodedImage.height;

    final resizedDecodedImage = img.copyResize(
      decodedImage,
      width: 300,
      interpolation: img.Interpolation.cubic,
    );

    final previewWidth = resizedDecodedImage.width;
    final previewHeight = resizedDecodedImage.height;
    final previewImageBytes = img.encodeJpg(resizedDecodedImage);

    final originalFileUuid = Uuid().v4obj();
    final previewFileUuid = Uuid().v4obj();

    final originalFileRef = avatarsDirectoryRef.child('$originalFileUuid.$fileExtension');
    await originalFileRef.putData(fileBytes);
    final originalFileUrl = Uri.parse(await originalFileRef.getDownloadURL());

    final previewImageRef = avatarsDirectoryRef.child('$previewFileUuid.jpg');
    await previewImageRef.putData(previewImageBytes);
    final previewImageUrl = Uri.parse(await previewImageRef.getDownloadURL());

    return FileWithPreviewModel(
      file: ImageModel(
        uuid: originalFileUuid,
        url: originalFileUrl,
        width: width,
        height: height,
      ),
      previewImage: ImageModel(
        uuid: previewFileUuid,
        url: previewImageUrl,
        width: previewWidth,
        height: previewHeight,
      ),
    );
  }

  Future<void> _removeAvatarFile(ImageModel avatar, ImageModel previewAvatar) async {
    final avatarRef = _firebaseStorage.refFromURL('${avatar.url}');
    final previewAvatarRef = _firebaseStorage.refFromURL('${previewAvatar.url}');

    await avatarRef.delete();
    return previewAvatarRef.delete();
  }

  @override
  Future<ProfileModel> updateProfileInfo(InputProfileInfoModel newProfileInfo) async {
    if (newProfileInfo.username.validate() != UsernameValidationResult.valid) throw Error();

    final profile = await getProfileForCurrentAccount();
    final updatedProfile = ProfileModel(
      uuid: profile.uuid,
      username: newProfileInfo.username,
      avatar: profile.avatar,
      previewAvatar: profile.previewAvatar,
    );

    await _updateProfile(updatedProfile);
    return updatedProfile;
  }
}
