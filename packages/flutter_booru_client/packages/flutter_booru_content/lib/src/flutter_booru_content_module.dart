import 'package:flutter_booru_content/src/infrastructure/repositories/content_repository_impl.dart';
import 'package:flutter_booru_content/src/presentation/pages/upload_content_page.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';

class FlutterBooruContentModule extends Module with PansyArchGoRouterMixin {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreModule());
    services.addContentRepositoryImpl();
  }

  @override
  List<GoRoute> buildRoutes(provider) {
    return [
      route(
        path: UploadContentPageRoute.path,
        routeFactory: UploadContentPageRoute.fromData,
        builder: (_, __, route) => UploadContentPage(route),
      ),
    ];
  }
}
