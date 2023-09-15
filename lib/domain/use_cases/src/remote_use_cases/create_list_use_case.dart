part of '../../use_cases.dart';

class CreateListUseCase extends FutureUseCase<GroceryListModel, void> {
  CreateListUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  @override
  Future<void> call(GroceryListModel input) async {
    return _groceryListsRepository.createGroceryList(input);
  }
}
