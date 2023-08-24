import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';

abstract class GroceryListsRepository {
  Future<List<GroceryListModel>> fetchMyGroceryLists();
  Future<void> deleteGroceryList(String uid);
}
