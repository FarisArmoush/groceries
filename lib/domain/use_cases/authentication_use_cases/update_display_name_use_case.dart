import 'package:groceries/domain/repositories/user_management_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateDisplayNameUseCase {
  const UpdateDisplayNameUseCase(this._userManagementRepository);

  final UserManagementRepository _userManagementRepository;

  Future<void> call(String input) async {
    return _userManagementRepository.updateDisplayName(input);
  }
}
