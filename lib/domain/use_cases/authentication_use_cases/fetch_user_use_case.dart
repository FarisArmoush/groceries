import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchUserUseCase {
  const FetchUserUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  UserModel? call() => _authenticationRepository.currentUser;
}