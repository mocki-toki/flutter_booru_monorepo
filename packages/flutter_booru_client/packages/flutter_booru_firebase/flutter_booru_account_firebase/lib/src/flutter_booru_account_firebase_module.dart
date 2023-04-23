import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_account_firebase/src/providers/firebase_auth_provider.dart';
import 'package:flutter_booru_account_firebase/src/services/firebase_account_service.dart';
import 'package:flutter_booru_account_firebase/src/services/firebase_auth_service.dart';
import 'package:flutter_booru_core_firebase/flutter_booru_core_firebase.dart';
import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';

class FlutterBooruAccountFirebaseModule extends Module {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreFirebaseModule());
    services.addModule(FlutterBooruAccountModule());

    services.addFirebaseAuthProvider();
    services.addSingletonFactory((sp) => sp.getRequired<FirebaseAuthProvider>().firebaseAuth);

    services.addFirebaseAccountService();
    services.addFirebaseAuthService();
  }
}
