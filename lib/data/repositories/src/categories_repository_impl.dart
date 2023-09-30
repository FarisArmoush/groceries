part of '../repositories.dart';

class CategoriesRepositoryImpl extends CategoriesRepository {
  CategoriesRepositoryImpl(this._categoriesDataSource);

  final CategoriesDataSource _categoriesDataSource;
  @override
  Future<List<CategoryModel>> fetchAllCategories() async {
    final categories = await _categoriesDataSource.fetchCategories();
    final listOfCategoryModels = <CategoryModel>[];
    for (final category in categories) {
      listOfCategoryModels.add(CategoryModel.fromJson(category));
    }
    return listOfCategoryModels;
  }
}
