part of '../../use_cases.dart';

class GroceryListsUseCase {
  const GroceryListsUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  Future<List<GroceryListModel>> fetchMyGroceryLists() =>
      _groceryListsRepository.fetchMyGroceryLists();
}
