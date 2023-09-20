part of '../repositories.dart';

abstract class BaseGroceriesRepository {
  Future<List<GroceryModel>> fetchAllBaseGroceries();
  Future<void> addGroceryToList(GroceryModel groceryModel);
}