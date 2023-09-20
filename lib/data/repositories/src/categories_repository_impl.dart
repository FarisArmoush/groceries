part of '../repositories.dart';

class CategoriesRepositoryImpl extends CategoriesRepository {
  CategoriesRepositoryImpl(this._categoriesDataSource);

  final CategoriesDataSource _categoriesDataSource;
  @override
  Future<List<CategoryModel>> fetchAllCategories() async {
    final categories = await _categoriesDataSource.fetchCategories();
    final listOfCategoryModels = <CategoryModel>[];
    for (final category in categories) {
      listOfCategoryModels.add(
        CategoryModel(
          creationDate: (category['creationDate']! as Timestamp).toDate(),
          image: category['image']! as String,
          name: category['name']! as String,
          parentCategoryId: category['parentCategoryId']! as String,
          categoryId: category['categoryId']! as String,
        ),
      );
    }
    return listOfCategoryModels;
  }
}
