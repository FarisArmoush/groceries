import 'package:groceries/data/models/category/category_model.dart';

abstract interface class CategoriesDataSource {
  Future<List<CategoryModel>> fetchCategories([String? categoryId]);
}
