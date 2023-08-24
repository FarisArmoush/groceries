import 'package:groceries/domain/repositories/authentication_repository.dart';

class UpdateEmailUseCase {
  UpdateEmailUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call(String email) async =>
      _authenticationRepository.updateEmail(email);
}
