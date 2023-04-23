import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:flutter_booru_profile_page/src/presentation/pages/profile_page.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';

class FlutterBooruProfilePageModule extends Module with PansyArchGoRouterMixin {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreModule());
    services.addModule(FlutterBooruAccountModule());
    services.addModule(FlutterBooruProfileModule());
    services.addModule(FlutterBooruContentModule());
    services.addCurrentAccountProfileViewModel();
  }

  @override
  List<GoRoute> buildRoutes(provider) {
    return [
      route(
        path: CurrentAccountProfilePageRoute.path,
        routeFactory: CurrentAccountProfilePageRoute.fromData,
        builder: (_, __, route) => ProfilePage(route),
        redirect: (context, _) {
          final state = context.getRequired<AccountViewModel>().state;
          return state.maybeWhen(
            authorized: (_) => null,
            orElse: () => PresentationConstants.rootPath,
          );
        },
      ),
      route(
        path: ProfilePageRoute.path,
        routeFactory: ProfilePageRoute.fromData,
        builder: (_, __, route) => ProfilePage(route),
      ),
    ];
  }
}
