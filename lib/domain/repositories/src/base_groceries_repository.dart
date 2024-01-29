part of '../repositories.dart';

abstract class BaseGroceriesRepository {
  Future<List<GroceryModel>> fetchAllBaseGroceries();
  Future<List<GroceryModel>> fetchCategoryItems(String? categoryId);
}
