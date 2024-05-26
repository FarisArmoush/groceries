import 'package:groceries/domain/repositories/user_management_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class SendPasswordResetEmailUseCase {
  const SendPasswordResetEmailUseCase(this._userManagementRepository);

  final UserManagementRepository _userManagementRepository;

  Future<void> call(String input) async {
    return _userManagementRepository.sendPasswordResetEmail(input);
  }
}
