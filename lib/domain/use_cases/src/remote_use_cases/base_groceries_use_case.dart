part of '../../use_cases.dart';

class BaseGroceriesUseCase {
  const BaseGroceriesUseCase(
    this._baseGroceriesRepository,
    this._categoriesRepository,
  );
  final BaseGroceriesRepository _baseGroceriesRepository;
  final CategoriesRepository _categoriesRepository;

  Future<List<GroceryModel>> fetchAllBaseGroceries() async =>
      _baseGroceriesRepository.fetchAllBaseGroceries();

  Future<List<CategoryModel>> fetchAllCategories() async =>
      _categoriesRepository.fetchAllCategories();

  Future<void> addGroceryToList(GroceryModel groceryModel) async =>
      _baseGroceriesRepository.addGroceryToList(groceryModel);
}
