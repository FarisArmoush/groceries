part of '../repositories.dart';

abstract class GroceryListsRepository {
  Future<List<GroceryListModel>> fetchMyGroceryLists();
  Future<void> createGroceryList(GroceryListModel? groceryListModel);
  Future<void> deleteGroceryList(String? uid);
  Future<void> removeMember(UserModel? userModel);
  Future<void> updateListImage(String? image);
  Future<void> updateListName(String? name);
}
