part of '../repositories.dart';

class BaseGroceriesRepositoryImpl extends BaseGroceriesRepository {
  BaseGroceriesRepositoryImpl(this._groceriesDataSource);

  final BaseGroceriesDataSource _groceriesDataSource;

  @override
  Future<List<GroceryModel>> fetchAllBaseGroceries() {
    return _groceriesDataSource.fetchAllGroceries();
  }

  @override
  Future<void> addGroceryToList(GroceryModel groceryModel) {
    throw UnimplementedError();
  }
}
