import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';

class UpdateListNameUseCase extends FutureInputUseCase<String?> {
  UpdateListNameUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;
  @override
  Future<void> call(String? input) {
    return _groceryListsRepository.updateListName(input);
  }
}
