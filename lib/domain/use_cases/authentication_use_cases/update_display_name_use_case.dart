import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateDisplayNameUseCase {
  const UpdateDisplayNameUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call(String input) async {
    return _authenticationRepository.updateDisplayName(input);
  }
}
