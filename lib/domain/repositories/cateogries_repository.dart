import 'package:groceries/data/models/category_model/category_model.dart';

abstract interface class CategoriesRepository {
  const CategoriesRepository();

  Future<List<CategoryModel>> fetchCategories([String? categoryId]);
  // Future<List<CategoryModel>> fetchParentCategories();
  // Future<List<CategoryModel>> fetchSubCategories(String? parentCategoryId);
}
