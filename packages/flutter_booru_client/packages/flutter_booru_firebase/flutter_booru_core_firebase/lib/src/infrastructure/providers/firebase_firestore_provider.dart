import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pansy_arch/pansy_arch.dart';

part 'firebase_firestore_provider.g.dart';

@Service(ServiceLifetime.singleton)
class FirebaseFirestoreProvider {
  FirebaseFirestoreProvider({required FirebaseApp firebaseApp})
      : firebaseFirestore = FirebaseFirestore.instanceFor(app: firebaseApp);

  final FirebaseFirestore firebaseFirestore;
}
