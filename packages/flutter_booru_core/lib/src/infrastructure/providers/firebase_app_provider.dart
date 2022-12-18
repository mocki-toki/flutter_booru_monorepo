import 'package:dino/dino.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseAppProvider implements Initializable {
  FirebaseAppProvider({this.options});

  final FirebaseOptions? options;
  late final FirebaseApp firebaseApp;

  @override
  Future<void> initialize() async {
    firebaseApp = await Firebase.initializeApp(options: options);
  }
}
