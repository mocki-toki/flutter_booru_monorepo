import 'package:flutter_booru_profile/src/infrastructure/services/profile_repository_impl.dart';
import 'package:flutter_booru_profile/src/presentation/pages/edit_profile_page.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';

class FlutterBooruProfileModule extends Module with PansyArchGoRouterMixin {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreModule());
    services.addProfileRepositoryImpl();
  }

  @override
  List<GoRoute> buildRoutes(provider) {
    return [
      route(
        path: EditProfilePageRoute.path,
        routeFactory: EditProfilePageRoute.fromData,
        builder: (_, __, route) => EditProfilePage(route),
      ),
    ];
  }
}
