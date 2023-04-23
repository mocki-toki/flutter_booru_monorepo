import 'package:flutter_booru_content/flutter_booru_content.dart';
import 'package:flutter_booru_profile/flutter_booru_profile.dart';
import 'package:flutter_booru_content_firebase/src/infrastructure/providers/firebase_content_provider.dart';
import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';

class FlutterBooruContentFirebaseModule extends Module {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruContentModule());
    services.addModule(FlutterBooruProfileModule());
    services.addFirebaseContentProvider();
  }
}
