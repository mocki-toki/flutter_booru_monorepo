import 'dart:collection';
import 'dart:typed_data';

import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:image/image.dart' as image;
import 'package:mime/mime.dart';
import 'package:pansy_arch/pansy_arch.dart';

part 'firebase_content_provider.g.dart';

@Service(ServiceLifetime.singleton)
class FirebaseContentProvider implements ContentProvider {
  FirebaseContentProvider(
    this._firebaseFirestore,
    this._firebaseStorage,
    this._profileProvider,
  );

  final FirebaseFirestore _firebaseFirestore;
  final FirebaseStorage _firebaseStorage;
  final ProfileProvider _profileProvider;

  @override
  Future<UnmodifiableListView<ContentModel>> getFeed() async {
    final response = <ContentModel>[];
    final items = await _firebaseFirestore.collection('content').get();

    await Future.forEach(
      items.docs,
      (element) {
        if (element.exists) {
          response.add(_modelFromJson(element.id, element.data()));
        }
      },
    );

    return UnmodifiableListView(response);
  }

  @override
  Future<ContentModel> getContentByUuid(UuidValue uuid) async {
    final response = await _firebaseFirestore.collection('content').doc('$uuid').get();

    if (response.exists) {
      return _modelFromJson(response.id, response.data()!);
    } else {
      throw UnimplementedError();
    }
  }

  @override
  Future<ContentModel> uploadContent(ContentBodyModel bodyModel) async {
    final uuid = await Uuid().v4();
    final dateTime = DateTime.now();

    final authorProfile = await _profileProvider.getProfileForCurrentAccount();
    final contentModel = ContentModel(
      uuid: UuidValue(uuid),
      body: bodyModel,
      created: dateTime,
      updated: dateTime,
      authorProfileUuid: authorProfile.uuid,
    );

    await _firebaseFirestore.collection('content').doc(uuid).set(_modelToJson(contentModel));
    return contentModel;
  }

  @override
  // TODO: разделить заливку на каждый контент по модулю
  // ignore: long-method
  Future<FileWithPreviewModel> uploadFile(ContentFile contentFile) async {
    final file = contentFile.value;
    final contentType = contentFile.contentType;
    final contentDirectoryRef = _firebaseStorage.ref('content/${contentType.value}');

    final fileBytes = await file.readAsBytes();
    final fileExtension = file.name.split('.').last;

    final Uint8List previewImageBytes;
    int? width;
    int? height;
    final int previewWidth;
    final int previewHeight;

    switch (contentType) {
      case ContentType.image:
        final decodedImage = image.decodeImage(fileBytes)!;

        width = decodedImage.width;
        height = decodedImage.height;

        final resizedDecodedImage = image.copyResize(
          decodedImage,
          width: 500,
          interpolation: image.Interpolation.cubic,
        );

        previewWidth = resizedDecodedImage.width;
        previewHeight = resizedDecodedImage.height;
        previewImageBytes = image.encodeJpg(resizedDecodedImage);
        break;
      case ContentType.video:
        previewWidth = 1;
        previewHeight = 1;
        previewImageBytes = image.encodeJpg(image.Image(width: 1, height: 1));
        break;
    }

    final originalFileUuid = Uuid().v4obj();
    final previewFileUuid = Uuid().v4obj();

    final originalFileRef = contentDirectoryRef.child('$originalFileUuid.$fileExtension');
    await originalFileRef.putData(
      fileBytes,
      SettableMetadata(contentType: lookupMimeType(file.path)),
    );
    final originalFileUrl = Uri.parse(await originalFileRef.getDownloadURL());

    final previewImageRef = contentDirectoryRef.child('$previewFileUuid.jpg');
    await previewImageRef.putData(previewImageBytes, SettableMetadata(contentType: 'image/jpeg'));
    final previewImageUrl = Uri.parse(await previewImageRef.getDownloadURL());

    return FileWithPreviewModel(
      file: _getFileModelFromData(contentType, originalFileUuid, originalFileUrl, width, height),
      previewImage: ImageModel(
        uuid: previewFileUuid,
        url: previewImageUrl,
        width: previewWidth,
        height: previewHeight,
      ),
    );
  }

  FileModel _getFileModelFromData(
    ContentType contentType,
    UuidValue originalFileUuid,
    Uri originalFileUrl,
    int? width,
    int? height,
  ) {
    switch (contentType) {
      case ContentType.image:
        return ImageModel(
          uuid: originalFileUuid,
          url: originalFileUrl,
          width: width!,
          height: height!,
        );
      case ContentType.video:
        return VideoModel(
          uuid: originalFileUuid,
          url: originalFileUrl,
        );
    }
  }

  Map<String, dynamic> _modelToJson(ContentModel model) {
    var json = model.toJson();
    json.remove('uuid');

    return json;
  }

  ContentModel _modelFromJson(String id, Map<String, dynamic> json) {
    json.putIfAbsent('uuid', () => id);

    return ContentModel.fromJson(json);
  }

  @override
  Future<UnmodifiableListView<ContentModel>> getPostsByAuthor(UuidValue authorProfileUuid) async {
    final response = <ContentModel>[];
    final items = await _firebaseFirestore
        .collection('content')
        .where('author_profile_uuid', isEqualTo: '$authorProfileUuid')
        .get();

    await Future.forEach(
      items.docs,
      (element) {
        if (element.exists) {
          response.add(_modelFromJson(element.id, element.data()));
        }
      },
    );

    return UnmodifiableListView(response);
  }
}
