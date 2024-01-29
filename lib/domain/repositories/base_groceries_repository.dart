import 'package:groceries/data/models/grocery_model/grocery_model.dart';

abstract class BaseGroceriesRepository {
  Future<List<GroceryModel>> fetchAllBaseGroceries();
  Future<List<GroceryModel>> fetchCategoryItems(String? categoryId);
}
