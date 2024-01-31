import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';

class UpdateDisplayNameUseCase extends FutureInputUseCase<String> {
  UpdateDisplayNameUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<void> call(String input) async {
    return _authenticationRepository.updateDisplayName(input);
  }
}