import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';
import 'package:flutter_booru_client/flutter_booru_application_with_modules.dart';

Future<void> main() async {
  final services = ServiceCollection();

  // TODO fix dino generator
  final application = FlutterBooruApplicationWithModules(services);
  application.configureServices(services);

  await application.run();
}
