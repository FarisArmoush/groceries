import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';

class GroceryListsUseCase extends FutureOutputUseCase<List<GroceryListModel>?> {
  GroceryListsUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  @override
  Future<List<GroceryListModel>?> call() =>
      _groceryListsRepository.fetchMyGroceryLists();
}