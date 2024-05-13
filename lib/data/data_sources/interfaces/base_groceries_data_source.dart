import 'package:groceries/data/models/grocery/grocery_model.dart';

abstract interface class BaseGroceriesDataSource {
  Future<List<GroceryModel>> fetchCategoryItems(String? categoryId);
}
