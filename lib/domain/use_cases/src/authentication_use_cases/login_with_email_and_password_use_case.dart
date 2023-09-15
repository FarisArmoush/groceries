part of '../../use_cases.dart';

class LoginWithEmailAndPasswordUseCase extends FutureUseCase<LoginParam, void> {
  LoginWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;
  @override
  Future<void> call(LoginParam input) async {
    return _authenticationRepository.signInWithEmailAndPassword(input);
  }
}
