import 'package:groceries/data/data_sources/interfaces/categories_data_source.dart';
import 'package:groceries/data/data_sources/remote/firestore_categories_data_source.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/domain/repositories/cateogries_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CategoriesRepository)
class CategoriesRepositoryImpl extends CategoriesRepository {
  const CategoriesRepositoryImpl(
    @Named.from(FirestoreCategoriesDataSource) this._dataSource,
  );

  final CategoriesDataSource _dataSource;

  @override
  Future<List<CategoryModel>> fetchCategories([String? categoryId]) {
    return _dataSource.fetchCategories(categoryId);
  }
}
