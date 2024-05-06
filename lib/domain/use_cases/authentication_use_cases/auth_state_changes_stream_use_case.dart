import 'package:groceries/domain/entities/user/user_entity.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthStateChangesStreamUseCase {
  const AuthStateChangesStreamUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  Stream<UserEntity?> call() => _authenticationRepository.authStateChanges.map(
        (user) {
          final entity = user.toEntity();
          if (user == null || entity == null) return null;
          return entity;
        },
      );
}
