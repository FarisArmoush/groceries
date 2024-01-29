import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';

class UpdateListImageUseCase extends FutureInputUseCase<String?> {
  UpdateListImageUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;
  @override
  Future<void> call(String? input) {
    return _groceryListsRepository.updateListImage(input);
  }
}
