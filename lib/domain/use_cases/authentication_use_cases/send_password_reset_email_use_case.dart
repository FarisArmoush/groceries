import 'package:groceries/domain/repositories/authentication_repository.dart';

class SendPasswordResetEmailUseCase {
  const SendPasswordResetEmailUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call(String email) async =>
      _authenticationRepository.sendPasswordResetEmail(email);
}
