import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:groceries/utils/params/login_param/login_param.dart';

class LoginWithEmailAndPasswordUseCase extends FutureInputUseCase<LoginParam> {
  LoginWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;
  @override
  Future<void> call(LoginParam input) async {
    return _authenticationRepository.signInWithEmailAndPassword(input);
  }
}
