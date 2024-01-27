part of '../repositories.dart';

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
