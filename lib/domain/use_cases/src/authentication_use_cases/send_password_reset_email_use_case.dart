part of '../../use_cases.dart';

class SendPasswordResetEmailUseCase extends FutureUseCase<String, void> {
  SendPasswordResetEmailUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;
  @override
  Future<void> call(String input) async {
    return _authenticationRepository.sendPasswordResetEmail(input);
  }
}
