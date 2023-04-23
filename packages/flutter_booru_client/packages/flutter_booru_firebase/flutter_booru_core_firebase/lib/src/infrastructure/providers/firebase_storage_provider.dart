import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:pansy_arch/pansy_arch.dart';

part 'firebase_storage_provider.g.dart';

@Service(ServiceLifetime.singleton)
class FirebaseStorageProvider {
  FirebaseStorageProvider({required FirebaseApp firebaseApp})
      : firebaseStorage = FirebaseStorage.instanceFor(app: firebaseApp);

  final FirebaseStorage firebaseStorage;
}
