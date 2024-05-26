import 'package:groceries/domain/repositories/user_management_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class VerifyUserUseCase {
  const VerifyUserUseCase(this._userManagementRepository);

  final UserManagementRepository _userManagementRepository;

  Future<void> call() async =>
      _userManagementRepository.sendVerificationEmail();
}
