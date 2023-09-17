part of '../repositories.dart';

class CategoriesRepositoryImpl extends CategoriesRepository {
  CategoriesRepositoryImpl(this._categoriesDataSource);

  final CategoriesDataSource _categoriesDataSource;
  @override
  Future<List<CategoryModel>> fetchAllCategories() {
    _categoriesDataSource.toString();
    throw UnimplementedError();
  }
}
