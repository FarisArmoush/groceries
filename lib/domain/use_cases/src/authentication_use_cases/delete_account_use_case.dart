part of '../../use_cases.dart';

class DeleteAccountUseCase {
  const DeleteAccountUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call() async => _authenticationRepository.deleteAccount();
}
