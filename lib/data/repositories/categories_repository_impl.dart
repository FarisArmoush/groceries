import 'package:groceries/data/data_sources/categories_data_source.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/domain/repositories/cateogries_repository.dart';

class CategoriesRepositoryImpl extends CategoriesRepository {
  CategoriesRepositoryImpl(this._categoriesDataSource);

  final CategoriesDataSource _categoriesDataSource;

  @override
  Future<List<CategoryModel>> fetchParentCategories() {
    return _categoriesDataSource.fetchParentCategories();
  }

  @override
  Future<List<CategoryModel>> fetchSubCategories(String? parentCategoryId) {
    return _categoriesDataSource.fetchSubCategories(parentCategoryId);
  }
}