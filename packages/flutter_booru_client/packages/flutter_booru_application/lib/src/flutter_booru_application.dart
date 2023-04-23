import 'package:flutter/material.dart';
import 'package:flutter_booru_application/src/presentation/application.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';

abstract class FlutterBooruApplication extends PansyArchApplication {
  FlutterBooruApplication(ServiceCollection services) : super(services) {
    services.addModule(PansyArchFlutterModule());
    services.addModule(PansyArchGoRouterModule());
  }

  @override
  Future<ServiceScope> run() async {
    WidgetsFlutterBinding.ensureInitialized();

    final rootScope = await super.run();
    runApp(Application(serviceProvider: rootScope.serviceProvider));

    return rootScope;
  }
}
