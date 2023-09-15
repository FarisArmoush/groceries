part of '../../use_cases.dart';

class RegisterWithEmailAndPasswordUseCase
    extends FutureUseCase<RegisterParam, void> {
  RegisterWithEmailAndPasswordUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<void> call(RegisterParam input) async {
    return _authenticationRepository.signUpWithEmailAndPassword(input);
  }
}
