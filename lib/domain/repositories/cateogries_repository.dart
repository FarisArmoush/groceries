import 'package:groceries/data/models/category_model/category_model.dart';

abstract interface class CategoriesRepository {
  Future<List<CategoryModel>> fetchCategories([String? categoryId]);
}
