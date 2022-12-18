import 'package:dino/dino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';

import 'main.dino.g.dart';

Future<void> main() async {
  runApp(const UninitializedApplication());
  final ServiceCollection services = $ServiceCollection();

  services.addInstance(FirebaseAppProvider(options: DefaultFirebaseOptions.currentPlatform));
  services.addSingleton<FirebaseFirestoreProvider>();

  final rootScope = services.buildRootScope();
  await rootScope.initialize();

  runApp(Application(serviceProvider: rootScope.serviceProvider));
}
