part of '../../use_cases.dart';

class GroceryListsUseCase extends FutureOutputUseCase<List<GroceryListModel>?> {
  GroceryListsUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  @override
  Future<List<GroceryListModel>?> call() =>
      _groceryListsRepository.fetchMyGroceryLists();
}
