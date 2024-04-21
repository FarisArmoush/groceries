import 'package:groceries/data/models/login_param/login_param.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginWithEmailAndPasswordUseCase {
  const LoginWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call(LoginParam input) async {
    return _authenticationRepository.signInWithEmailAndPassword(input);
  }
}
