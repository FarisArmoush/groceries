import 'package:groceries/domain/entities/user/user_entity.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchUserUseCase {
  const FetchUserUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  UserEntity? call() => _authenticationRepository.currentUser?.toEntity();
}
