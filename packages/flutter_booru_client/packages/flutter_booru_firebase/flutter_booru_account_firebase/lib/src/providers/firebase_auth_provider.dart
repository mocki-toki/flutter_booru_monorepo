import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pansy_arch/pansy_arch.dart';

part 'firebase_auth_provider.g.dart';

@Service(ServiceLifetime.singleton)
class FirebaseAuthProvider {
  FirebaseAuthProvider({required FirebaseApp firebaseApp})
      : firebaseAuth = FirebaseAuth.instanceFor(app: firebaseApp);

  final FirebaseAuth firebaseAuth;
}
