import 'package:groceries/data/data_sources/base_groceries_data_source.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/domain/repositories/base_groceries_repository.dart';

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