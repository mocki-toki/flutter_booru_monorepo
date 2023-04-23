import 'package:uuid/uuid.dart';
import 'package:fpdart/fpdart.dart';
import 'package:flutter_booru_content_favorite/src/domain/services/favorite_repository.dart';
import 'package:flutter_booru_content_favorite/src/domain/services/favorite_service.dart';
import 'package:pansy_arch/pansy_arch.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  FavoriteRepositoryImpl(this._favoriteService);

  final FavoriteService _favoriteService;

  Future<Either<Error, bool>> getFavoriteStatus(UuidValue contentUuid) {
    return _favoriteService.getFavoriteStatus(contentUuid).fromDataToEither();
  }

  Future<Either<Error, bool>> setFavoriteStatus(UuidValue contentUuid, bool value) {
    return _favoriteService.setFavoriteStatus(contentUuid, value).fromDataToEither();
  }
}
