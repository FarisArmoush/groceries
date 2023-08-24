import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';

class GroceryListsUseCase {
  GroceryListsUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  Future<List<GroceryListModel>> fetchMyGroceryLists() =>
      _groceryListsRepository.fetchMyGroceryLists();
}
