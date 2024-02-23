import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';

abstract class GroceryListsRepository {
  const GroceryListsRepository();
  Future<List<GroceryListModel>> fetchMyGroceryLists();
  Future<void> createGroceryList(GroceryListModel? groceryListModel);
  Future<void> deleteGroceryList(String? uid);
  Future<void> removeMember(UserModel? userModel);
  Future<void> updateListImage(String? image);
  Future<void> updateListName(String? name);
}
