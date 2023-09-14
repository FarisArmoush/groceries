import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/domain/repositories/base_groceries_repository.dart';

class BaseGroceriesUseCase {
  const BaseGroceriesUseCase(this._baseGroceriesRepository);
  final BaseGroceriesRepository _baseGroceriesRepository;

  Future<List<GroceryModel>> fetchAllBaseGroceries() async =>
      _baseGroceriesRepository.fetchAllBaseGroceries();

  Future<void> addGroceryToList(GroceryModel groceryModel) async =>
      _baseGroceriesRepository.addGroceryToList(groceryModel);
}
