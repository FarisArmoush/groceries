import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginWithEmailAndPasswordUseCase {
  const LoginWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call({required String email, required String password}) async {
    return _authenticationRepository.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
