part of '../../use_cases.dart';

class VerifyUserUseCase {
  const VerifyUserUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call() async =>
      _authenticationRepository.sendVerificationEmail();
}
