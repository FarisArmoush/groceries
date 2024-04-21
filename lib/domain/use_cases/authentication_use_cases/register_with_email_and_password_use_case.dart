import 'package:groceries/data/models/register_param/register_param.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterWithEmailAndPasswordUseCase {
  const RegisterWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call(RegisterParam input) {
    return _authenticationRepository.signUpWithEmailAndPassword(input);
  }
}
