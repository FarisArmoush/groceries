import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class VerifyUserUseCase {
  const VerifyUserUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call() async =>
      _authenticationRepository.sendVerificationEmail();
}
