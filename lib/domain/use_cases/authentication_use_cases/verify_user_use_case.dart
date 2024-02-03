import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class VerifyUserUseCase extends FutureOutputUseCase<void> {
  VerifyUserUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  Future<void> call() async =>
      _authenticationRepository.sendVerificationEmail();
}
