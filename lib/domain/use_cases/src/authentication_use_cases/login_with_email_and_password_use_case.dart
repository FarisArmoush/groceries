part of '../../use_cases.dart';

class LoginWithEmailAndPasswordUseCase extends FutureInputUseCase<LoginParam> {
  LoginWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;
  @override
  Future<void> call(LoginParam input) async {
    return _authenticationRepository.signInWithEmailAndPassword(input);
  }
}
