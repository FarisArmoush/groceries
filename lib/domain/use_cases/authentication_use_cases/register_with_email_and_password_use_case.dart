import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/utils/params/register_param/register_param.dart';

class RegisterWithEmailAndPasswordUseCase {
  const RegisterWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call(RegisterParam registerParam) async =>
      _authenticationRepository.signUpWithEmailAndPassword(registerParam);
}
