import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';

class RemoveMemberFromListUseCase extends FutureInputUseCase<UserModel?> {
  RemoveMemberFromListUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;
  @override
  Future<void> call(UserModel? input) {
    return _groceryListsRepository.removeMember(input);
  }
}
