import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_account/src/infrastructure/repositories/account_repository_impl.dart';
import 'package:flutter_booru_account/src/infrastructure/repositories/auth_repository_impl.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';

class FlutterBooruAccountModule extends Module with PansyArchGoRouterMixin {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreModule());
    services.addAccountRepositoryImpl();
    services.addAuthRepositoryImpl();
    services.addAccountViewModel();
  }

  @override
  List<GoRoute> buildRoutes(provider) {
    return [
      route(
        path: AuthPageRoute.path,
        routeFactory: AuthPageRoute.fromData,
        builder: (_, __, route) => AuthPage(route),
        redirect: (context, _) {
          final state = context.getRequired<AccountViewModel>().state;
          return state.maybeWhen(
            authorized: (_) => PresentationConstants.rootPath,
            orElse: () => null,
          );
        },
      ),
    ];
  }
}
