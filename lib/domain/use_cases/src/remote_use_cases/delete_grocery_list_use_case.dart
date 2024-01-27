part of '../../use_cases.dart';

class DeleteGroceryListUseCase extends FutureInputUseCase<String?> {
  DeleteGroceryListUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;
  @override
  Future<void> call(String? input) {
    return _groceryListsRepository.deleteGroceryList(input);
  }
}
