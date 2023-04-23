import 'package:flutter_booru_profile_firebase/src/infrastructure/services/firebase_profile_provider.dart';
import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';
import 'package:flutter_booru_core_firebase/flutter_booru_core_firebase.dart';

class FlutterBooruProfileFirebaseModule extends Module {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreFirebaseModule());
    services.addFirebaseProfileProvider();
  }
}
