import 'package:flutter_booru_core_firebase/src/infrastructure/providers/firebase_app_provider.dart';
import 'package:flutter_booru_core_firebase/src/infrastructure/providers/firebase_firestore_provider.dart';
import 'package:flutter_booru_core_firebase/src/infrastructure/providers/firebase_storage_provider.dart';
import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';
import 'package:flutter_booru_core/flutter_booru_core.dart';

class FlutterBooruCoreFirebaseModule extends Module {
  @override
  void configureServices(ServiceCollection services) {
    services.addModule(FlutterBooruCoreModule());

    services.addFirebaseAppProvider();
    services.addFirebaseFirestoreProvider();
    services.addFirebaseStorageProvider();

    services.addSingletonFactory(
      (sp) => sp.getRequired<FirebaseAppProvider>().firebaseApp,
    );
    services.addSingletonFactory(
      (sp) => sp.getRequired<FirebaseFirestoreProvider>().firebaseFirestore,
    );
    services.addSingletonFactory(
      (sp) => sp.getRequired<FirebaseStorageProvider>().firebaseStorage,
    );
  }
}
