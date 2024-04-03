import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/domain/repositories/authentication_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchUserDataUseCase extends OutputUseCase<UserModel?> {
  const FetchUserDataUseCase(this._authenticationRepository);

  final AuthenticationRepository _authenticationRepository;

  @override
  UserModel? call() => _authenticationRepository.currentUser;
}
