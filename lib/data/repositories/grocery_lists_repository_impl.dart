import 'package:groceries/data/data_sources/remote_data_sources/grocery_lists_data_source.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';

class GroceryListsRepositoryImpl extends GroceryListsRepository {
  GroceryListsRepositoryImpl(this._groceryListsDataSource);

  final GroceryListsDataSource _groceryListsDataSource;
  @override
  Future<List<GroceryListModel>> fetchMyGroceryLists() =>
      _groceryListsDataSource.fetchMyGroceryLists();

  @override
  Future<void> deleteGroceryList(String uid) async =>
      _groceryListsDataSource.deleteGroceryList(uid);
}
