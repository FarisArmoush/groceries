import 'package:groceries/data/models/grocery_list_model.dart';

abstract class BaseGroceryListsRepository {
  List<GroceryListModel> get lists;
  Future<List<GroceryListModel>> getLists();
}
