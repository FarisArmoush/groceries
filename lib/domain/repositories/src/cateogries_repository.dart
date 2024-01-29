part of '../repositories.dart';

abstract class CategoriesRepository {
  Future<List<CategoryModel>> fetchParentCategories();
  Future<List<CategoryModel>> fetchSubCategories(String? parentCategoryId);
}
