part of '../repositories.dart';

// ignore: one_member_abstracts
abstract class CategoriesRepository {
  Future<List<CategoryModel>> fetchParentCategories();
}
