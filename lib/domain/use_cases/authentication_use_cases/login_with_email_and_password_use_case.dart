import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/utils/params/login_param/login_param.dart';

class LoginWithEmailAndPasswordUseCase {
  const LoginWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call(LoginParam loginParam) async =>
      _authenticationRepository.signInWithEmailAndPassword(loginParam);
}
