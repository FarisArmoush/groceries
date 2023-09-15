part of '../repositories.dart';

class GroceryListsRepositoryImpl extends GroceryListsRepository {
  GroceryListsRepositoryImpl(this._groceryListsDataSource);

  final GroceryListsDataSource _groceryListsDataSource;
  @override
  Future<List<GroceryListModel>> fetchMyGroceryLists() =>
      _groceryListsDataSource.fetchMyGroceryLists();

  @override
  Future<void> deleteGroceryList(String uid) async =>
      _groceryListsDataSource.deleteGroceryList(uid);

  @override
  Future<void> createGroceryList(GroceryListModel groceryListModel) {
    throw UnimplementedError();
  }
}
