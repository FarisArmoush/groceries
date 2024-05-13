import 'package:groceries/data/data_sources/interfaces/base_groceries_data_source.dart';
import 'package:groceries/data/data_sources/remote/firestore_base_groceries_data_source.dart';
import 'package:groceries/data/models/grocery/grocery_model.dart';
import 'package:groceries/domain/repositories/base_groceries_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: BaseGroceriesRepository)
class BaseGroceriesRepositoryImpl implements BaseGroceriesRepository {
  const BaseGroceriesRepositoryImpl(
    @Named.from(FirestoreBaseGroceriesDataSource) this._remoteDataSource,
  );

  final BaseGroceriesDataSource _remoteDataSource;

  @override
  Future<List<GroceryModel>> fetchCategoryItems(String? categoryId) {
    return _remoteDataSource.fetchCategoryItems(categoryId);
  }
}
