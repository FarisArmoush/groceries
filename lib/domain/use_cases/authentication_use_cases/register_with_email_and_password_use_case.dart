import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RegisterWithEmailAndPasswordUseCase {
  const RegisterWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call({
    required String email,
    required String password,
    required String name,
  }) {
    return _authenticationRepository.signUpWithEmailAndPassword(
      name: name,
      email: email,
      password: password,
    );
  }
}
