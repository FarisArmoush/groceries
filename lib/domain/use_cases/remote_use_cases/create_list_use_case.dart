import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';

class CreateListUseCase extends FutureInputUseCase<GroceryListModel?> {
  CreateListUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  @override
  Future<void> call(GroceryListModel? input) async {
    return _groceryListsRepository.createGroceryList(input);
  }
}
