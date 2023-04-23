import 'package:flutter_booru_content/src/domain/models/content_model.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:uuid/uuid.dart';

class ContentDetailsPageRoute extends ActivityRoute {
  ContentDetailsPageRoute(
    this.uuid, {
    this.cachedModel,
  }) {
    if (cachedModel != null) assert(cachedModel!.uuid == uuid);
  }

  static const path = '/view/:uuid';

  static ContentDetailsPageRoute fromData(RouteData data) {
    final uuid = data.parameters['uuid'] as String;
    return ContentDetailsPageRoute(
      UuidValue(uuid),
      cachedModel: data.extra['cachedModel'],
    );
  }

  final UuidValue uuid;
  final ContentModel? cachedModel;

  @override
  RouteData get data {
    return RouteData(
      path: path,
      parameters: {'uuid': '$uuid'},
      extra: {'cachedModel': cachedModel},
    );
  }
}
