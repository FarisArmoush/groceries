import 'package:groceries/data/data_sources/grocery_lists_data_source.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';

class GroceryListsRepositoryImpl extends GroceryListsRepository {
  GroceryListsRepositoryImpl(this._groceryListsDataSource);

  final GroceryListsDataSource _groceryListsDataSource;
  @override
  Future<List<GroceryListModel>> fetchMyGroceryLists() =>
      _groceryListsDataSource.fetchMyGroceryLists();

  @override
  Future<void> deleteGroceryList(String? uid) async =>
      _groceryListsDataSource.deleteGroceryList(uid);

  @override
  Future<void> createGroceryList(GroceryListModel? groceryListModel) async =>
      _groceryListsDataSource.createGroceryList(groceryListModel);

  @override
  Future<void> removeMember(UserModel? userModel) {
    return _groceryListsDataSource.removeMember(userModel);
  }

  @override
  Future<void> updateListImage(String? image) {
    return _groceryListsDataSource.updateListImage(image);
  }

  @override
  Future<void> updateListName(String? name) {
    return _groceryListsDataSource.updateListName(name);
  }
}
