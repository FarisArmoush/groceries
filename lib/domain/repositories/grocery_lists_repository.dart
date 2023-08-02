import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';

abstract class GroceryListsRepository {
  List<GroceryListModel> get lists;
  Future<List<GroceryListModel>> fetchMyGroceryLists();
}
