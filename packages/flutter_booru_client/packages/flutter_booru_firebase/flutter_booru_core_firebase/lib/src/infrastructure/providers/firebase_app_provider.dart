import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_booru_core_firebase/src/infrastructure/constants/default_firebase_options.dart';
import 'package:pansy_arch_flutter/pansy_arch_flutter.dart';
import 'package:pansy_arch/pansy_arch.dart';

part 'firebase_app_provider.g.dart';

@Service(ServiceLifetime.singleton)
class FirebaseAppProvider implements Initializable {
  FirebaseApp? _firebaseApp;

  FirebaseApp get firebaseApp {
    if (_firebaseApp != null) return _firebaseApp!;
    throw UninitializedError();
  }

  @override
  Future<void> initialize() async {
    _firebaseApp = await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  }
}
