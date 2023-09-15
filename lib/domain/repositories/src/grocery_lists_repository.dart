part of '../repositories.dart';

abstract class GroceryListsRepository {
  Future<List<GroceryListModel>> fetchMyGroceryLists();
  Future<void> deleteGroceryList(String uid);
  Future<void> createGroceryList(GroceryListModel groceryListModel);
}
