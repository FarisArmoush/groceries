import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';

class SendPasswordResetEmailUseCase extends FutureInputUseCase<String> {
  SendPasswordResetEmailUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;
  @override
  Future<void> call(String input) async {
    return _authenticationRepository.sendPasswordResetEmail(input);
  }
}
