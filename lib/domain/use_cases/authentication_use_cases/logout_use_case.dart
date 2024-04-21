import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class LogoutUseCase {
  LogoutUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Future<void> call() => _authenticationRepository.logout();
}
