part of '../../use_cases.dart';

class LogoutUseCase {
  LogoutUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call() {
    return _authenticationRepository.logOut();
  }
}
