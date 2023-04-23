import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:uuid/uuid.dart';
import 'package:pansy_arch/pansy_arch.dart';

part 'firebase_account_service.g.dart';

@Service(ServiceLifetime.singleton)
class FirebaseAccountService implements AccountService {
  const FirebaseAccountService(this._firebaseAuth);

  final FirebaseAuth _firebaseAuth;

  @override
  Future<AccountModel> getCurrentUser() async {
    return _userModelFromUser(_firebaseAuth.currentUser)!;
  }

  @override
  Future<void> logout() {
    return _firebaseAuth.signOut();
  }

  @override
  Future<void> deleteAccount() async {
    await _firebaseAuth.currentUser!.delete();
  }

  AccountModel? _userModelFromUser(User? user) {
    if (user == null) return null;
    return AccountModel(
      uuid: UuidValue(user.uid, false),
      email: EmailValue.fromString(user.email!),
    );
  }
}
