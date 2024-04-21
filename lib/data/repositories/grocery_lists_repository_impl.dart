import 'package:groceries/data/data_sources/interfaces/grocery_lists_data_source.dart';
import 'package:groceries/data/data_sources/mock/mock_grocery_lists_data_source.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: GroceryListsRepository)
class GroceryListsRepositoryImpl extends GroceryListsRepository {
  const GroceryListsRepositoryImpl(
    @Named.from(MockGroceryListsDataSource) this._dataSource,
  );

  final GroceryListsDataSource _dataSource;
  @override
  Future<List<GroceryListModel>> fetchMyGroceryLists() =>
      _dataSource.fetchMyGroceryLists();

  @override
  Future<void> deleteGroceryList(String? uid) async =>
      _dataSource.deleteGroceryList(uid);

  @override
  Future<void> createGroceryList(GroceryListModel? groceryListModel) async =>
      _dataSource.createGroceryList(groceryListModel);

  @override
  Future<void> removeMember(UserModel? userModel) {
    return _dataSource.removeMember(userModel);
  }

  @override
  Future<void> updateListImage(String? image) {
    return _dataSource.updateListImage(image);
  }

  @override
  Future<void> updateListName(String? name) {
    return _dataSource.updateListName(name);
  }
}
