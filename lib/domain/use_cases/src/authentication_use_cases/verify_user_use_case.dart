part of '../../use_cases.dart';

class VerifyUserUseCase extends FutureOutputUseCase<void> {
  VerifyUserUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<void> call() async =>
      _authenticationRepository.sendVerificationEmail();
}
