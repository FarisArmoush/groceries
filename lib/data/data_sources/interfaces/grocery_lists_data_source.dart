import 'package:groceries/data/models/grocery_list/grocery_list_model.dart';
import 'package:groceries/data/models/user/user_model.dart';

abstract interface class GroceryListsDataSource {
  Future<List<GroceryListModel>> fetchMyGroceryLists();
  Future<void> createGroceryList(GroceryListModel? groceryListModel);
  Future<void> deleteGroceryList(String? uid);
  Future<void> removeMember(UserModel? userModel);
  Future<void> updateListImage(String? image);
  Future<void> updateListName(String? name);
}
