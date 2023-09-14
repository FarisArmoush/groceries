import 'package:groceries/data/models/grocery_model/grocery_model.dart';

abstract class BaseGroceriesRepository {
  Future<List<GroceryModel>> fetchAllBaseGroceries();
  Future<void> addGroceryToList(GroceryModel groceryModel);
}
