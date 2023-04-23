import 'package:flutter_booru_application/flutter_booru_application.dart';

import 'package:flutter_booru_firebase/flutter_booru_firebase.dart';
import 'package:flutter_booru_home/flutter_booru_home.dart';
import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';

class FlutterBooruApplicationWithModules extends FlutterBooruApplication {
  FlutterBooruApplicationWithModules(super.services);

  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruFirebaseModule());
    services.addModule(FlutterBooruHomeModule());
  }
}
