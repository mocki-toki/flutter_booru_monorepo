import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:uuid/uuid.dart';
import 'package:pansy_arch/pansy_arch.dart';

part 'firebase_auth_service.g.dart';

@Service(ServiceLifetime.singleton)
class FirebaseAuthService implements AuthService {
  const FirebaseAuthService(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<AccountModel> register({
    required EmailValue email,
    required PasswordValue password,
  }) async {
    final userCredential = (await _firebaseAuth.createUserWithEmailAndPassword(
      email: '$email',
      password: '$password',
    ));

    return _userModelFromUser(userCredential.user)!;
  }

  @override
  Future<AccountModel> login({
    required EmailValue email,
    required PasswordValue password,
  }) async {
    final userCredential = (await _firebaseAuth.signInWithEmailAndPassword(
      email: '$email',
      password: '$password',
    ));
    return _userModelFromUser(userCredential.user)!;
  }

  AccountModel? _userModelFromUser(User? user) {
    if (user == null) return null;
    return AccountModel(
      uuid: UuidValue(user.uid, false),
      email: EmailValue.fromString(user.email!),
    );
  }
}
