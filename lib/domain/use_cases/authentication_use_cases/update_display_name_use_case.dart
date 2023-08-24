import 'package:groceries/domain/repositories/authentication_repository.dart';

class UpdateDisplayNameUseCase {
  const UpdateDisplayNameUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call(String displayName) async =>
      _authenticationRepository.updateDisplayName(displayName);
}
