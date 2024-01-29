import 'package:groceries/data/models/category_model/category_model.dart';

abstract class CategoriesRepository {
  Future<List<CategoryModel>> fetchParentCategories();
  Future<List<CategoryModel>> fetchSubCategories(String? parentCategoryId);
}
