part of '../repositories.dart';

class BaseGroceriesRepositoryImpl extends BaseGroceriesRepository {
  BaseGroceriesRepositoryImpl(this._groceriesDataSource);

  final BaseGroceriesDataSource _groceriesDataSource;

  @override
  Future<List<GroceryModel>> fetchAllBaseGroceries() async {
    return _groceriesDataSource.fetchAllGroceries();
  }

  @override
  Future<List<GroceryModel>> fetchCategoryItems(String? categoryId) {
    return _groceriesDataSource.fetchCategoryItems(categoryId);
  }
}
