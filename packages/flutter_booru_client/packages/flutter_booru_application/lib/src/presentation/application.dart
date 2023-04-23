import 'package:flutter/material.dart';
import 'package:pansy_arch_go_router/pansy_arch_go_router.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';

class Application extends StatelessWidget {
  const Application({super.key, required this.serviceProvider});

  final ServiceProvider serviceProvider;

  @override
  Widget build(BuildContext context) {
    return DinoProvider(
      serviceProvider: serviceProvider,
      child: MaterialApp.router(
        scaffoldMessengerKey: serviceProvider.getRequired<ScaffoldMessengerProvider>().key,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4),
          useMaterial3: true,
        ),
        routerConfig: serviceProvider.getRequired<GoRouter>(),
        title: PresentationConstants.appName,
      ),
    );
  }
}
