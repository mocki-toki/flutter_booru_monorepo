import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class FirebaseFirestoreProvider {
  FirebaseFirestoreProvider({required FirebaseApp firebaseApp})
      : firebaseFirestore = FirebaseFirestore.instanceFor(app: firebaseApp);

  final FirebaseFirestore firebaseFirestore;
}
