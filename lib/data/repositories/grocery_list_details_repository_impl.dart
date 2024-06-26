import 'package:groceries/data/data_sources/interfaces/grocery_list_details_data_source.dart';
import 'package:groceries/data/data_sources/mock/mock_grocery_list_details_data_source.dart';
import 'package:groceries/data/models/grocery_list_details/grocery_list_details_model.dart';
import 'package:groceries/domain/repositories/grocery_list_details_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: GroceryListDetailsRepository)
class GroceryListDetailsRepositoryImpl implements GroceryListDetailsRepository {
  const GroceryListDetailsRepositoryImpl(
    @Named.from(MockGroceryListDetailsDataSource) this._dataSource,
  );

  final GroceryListDetailsDataSource _dataSource;
  @override
  Future<GroceryListDetailsModel?> fetchDetails(String? uid) async {
    return _dataSource.fetchDetails(uid);
  }

  @override
  Future<void> addItem(String? itemUid) async {
    return _dataSource.addItem(itemUid);
  }

  @override
  Future<void> deleteGroceryList(String? uid) async {
    return _dataSource.deleteGroceryList(uid);
  }

  @override
  Future<void> removeItem(String? itemUid) async {
    return _dataSource.removeItem(itemUid);
  }

  @override
  Future<void> removeMember(String? memberId) async {
    return _dataSource.removeMember(memberId);
  }

  @override
  Future<void> updateListImage(String? image) async {
    return _dataSource.updateListImage(image);
  }

  @override
  Future<void> updateListName(String? name) async {
    return _dataSource.updateListName(name);
  }

  @override
  Future<void> clearList(String? uid) {
    return _dataSource.clearList(uid);
  }
}
