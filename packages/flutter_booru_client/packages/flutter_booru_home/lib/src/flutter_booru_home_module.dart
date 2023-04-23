import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_content_page/flutter_booru_content_page.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:flutter_booru_home/src/presentation/pages/home_page.dart';
import 'package:flutter_booru_profile_page/flutter_booru_profile_page.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';

class FlutterBooruHomeModule extends Module with PansyArchGoRouterMixin {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreModule());
    services.addModule(FlutterBooruAccountModule());
    services.addModule(FlutterBooruContentPageModule());
    services.addModule(FlutterBooruProfilePageModule());
  }

  @override
  List<GoRoute> buildRoutes(provider) {
    return [
      route(
        path: HomePageRoute.path,
        routeFactory: HomePageRoute.fromData,
        builder: (_, __, route) => HomePage(route),
      ),
    ];
  }
}
