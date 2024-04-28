import 'package:groceries/data/models/grocery_model/grocery_model.dart';

abstract interface class BaseGroceriesRepository {
  const BaseGroceriesRepository();
  Future<List<GroceryModel>> fetchCategoryItems(String? categoryId);
}
