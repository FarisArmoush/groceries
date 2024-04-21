import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GroceryListsUseCase {
  const GroceryListsUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  Future<List<GroceryListModel>?> call() =>
      _groceryListsRepository.fetchMyGroceryLists();
}
