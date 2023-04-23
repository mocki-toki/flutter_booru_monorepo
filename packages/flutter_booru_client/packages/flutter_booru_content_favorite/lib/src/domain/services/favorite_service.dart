import 'package:uuid/uuid.dart';

abstract class FavoriteService {
  Future<bool> getFavoriteStatus(UuidValue contentUuid);
  Future<bool> setFavoriteStatus(UuidValue contentUuid, bool value);
}
