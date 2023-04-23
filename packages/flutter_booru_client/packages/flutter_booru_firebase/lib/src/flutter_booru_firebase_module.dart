import 'package:flutter_booru_account_firebase/flutter_booru_account_firebase.dart';
import 'package:flutter_booru_content_firebase/flutter_booru_content_firebase.dart';
import 'package:flutter_booru_core_firebase/flutter_booru_core_firebase.dart';
import 'package:flutter_booru_profile_firebase/flutter_booru_profile_firebase.dart';
import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';

class FlutterBooruFirebaseModule extends Module {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreFirebaseModule());
    services.addModule(FlutterBooruAccountFirebaseModule());
    services.addModule(FlutterBooruContentFirebaseModule());
    services.addModule(FlutterBooruProfileFirebaseModule());
  }
}
