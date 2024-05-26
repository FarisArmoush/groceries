import 'package:groceries/domain/repositories/user_management_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteAccountUseCase {
  const DeleteAccountUseCase(this._userManagementRepository);

  final UserManagementRepository _userManagementRepository;

  Future<void> call() async => _userManagementRepository.deleteAccount();
}
