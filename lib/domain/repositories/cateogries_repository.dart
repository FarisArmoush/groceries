import 'package:groceries/data/models/category/category_model.dart';

abstract interface class CategoriesRepository {
  Future<List<CategoryModel>> fetchCategories([String? categoryId]);
}
