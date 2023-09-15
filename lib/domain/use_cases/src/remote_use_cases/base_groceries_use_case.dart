part of '../../use_cases.dart';

class BaseGroceriesUseCase {
  const BaseGroceriesUseCase(this._baseGroceriesRepository);
  final BaseGroceriesRepository _baseGroceriesRepository;

  Future<List<GroceryModel>> fetchAllBaseGroceries() async =>
      _baseGroceriesRepository.fetchAllBaseGroceries();

  Future<void> addGroceryToList(GroceryModel groceryModel) async =>
      _baseGroceriesRepository.addGroceryToList(groceryModel);
}
