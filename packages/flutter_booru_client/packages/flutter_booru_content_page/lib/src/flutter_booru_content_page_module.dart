import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_booru_content_page/flutter_booru_content_page.dart';

class FlutterBooruContentPageModule extends Module with PansyArchGoRouterMixin {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreModule());
    services.addModule(FlutterBooruContentModule());
  }

  @override
  List<GoRoute> buildRoutes(ServiceProvider provider) {
    return [
      route(
        path: ContentDetailsPageRoute.path,
        routeFactory: ContentDetailsPageRoute.fromData,
        builder: (_, __, route) => ContentDetailsPage(route),
      ),
      route(
        path: ContentInfoPageRoute.path,
        routeFactory: ContentInfoPageRoute.fromData,
        builder: (_, __, route) => ContentInfoPage(route),
      ),
    ];
  }
}
