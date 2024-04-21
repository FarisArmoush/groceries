import 'package:groceries/data/models/grocery_model/grocery_model.dart';

abstract interface class BaseGroceriesDataSource {
  Future<List<GroceryModel>> fetchCategoryItems(String? categoryId);
}
