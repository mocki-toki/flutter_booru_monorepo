import 'package:flutter_booru_account/flutter_booru_account.dart';
import 'package:flutter_booru_account/src/domain/services/auth_repository.dart';
import 'package:pansy_arch/pansy_arch.dart';
import 'package:fpdart/fpdart.dart';

part 'auth_repository_impl.g.dart';

@Service(ServiceLifetime.singleton)
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl(this._authRemoteData);

  final AuthService _authRemoteData;

  @override
  Future<Either<Error, AccountModel>> register({
    required EmailValue email,
    required PasswordValue password,
  }) {
    return _authRemoteData.register(email: email, password: password).fromDataToEither();
  }

  @override
  Future<Either<Error, AccountModel>> login({
    required EmailValue email,
    required PasswordValue password,
  }) {
    return _authRemoteData.login(email: email, password: password).fromDataToEither();
  }
}
