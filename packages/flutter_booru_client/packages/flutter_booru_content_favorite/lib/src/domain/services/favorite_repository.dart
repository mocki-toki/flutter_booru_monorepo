import 'package:uuid/uuid.dart';
import 'package:fpdart/fpdart.dart';

abstract class FavoriteRepository {
  Future<Either<Error, bool>> getFavoriteStatus(UuidValue contentUuid);
  Future<Either<Error, bool>> setFavoriteStatus(UuidValue contentUuid, bool value);
}
