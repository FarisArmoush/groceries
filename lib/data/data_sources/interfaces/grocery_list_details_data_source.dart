import 'package:groceries/data/models/grocery_list_details/grocery_list_details_model.dart';

abstract interface class GroceryListDetailsDataSource {
  Future<GroceryListDetailsModel?> fetchDetails(String? uid);
  Future<void> removeItem(String? itemUid);
  Future<void> removeMember(String? memberId);
  Future<void> addItem(String? itemUid);
  Future<void> deleteGroceryList(String? uid);
  Future<void> updateListImage(String? image);
  Future<void> updateListName(String? name);
  Future<void> clearList(String? uid);
}
