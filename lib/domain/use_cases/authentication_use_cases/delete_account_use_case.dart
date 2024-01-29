import 'package:groceries/domain/repositories/authentication_repository.dart';

class DeleteAccountUseCase {
  const DeleteAccountUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call() async => _authenticationRepository.deleteAccount();
}
