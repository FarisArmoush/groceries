part of '../data_sources.dart';

class BaseGroceriesDataSource {
  const BaseGroceriesDataSource(this._firestore);

  final FirebaseFirestore _firestore;

  Future<List<GroceryModel>> fetchAllGroceries() async {
    try {
      final collectionReference =
          _firestore.collection('items').orderBy('name');
      final result = await collectionReference.get();
      final items = <GroceryModel>[];
      for (final element in result.docs) {
        items.add(GroceryModel.fromJson(element.data()));
      }
      return items;
    } on FirebaseException catch (e) {
      log('fetchCategories Error Message => ${e.message}');
      return [];
    }
  }

  Future<List<GroceryModel>> fetchCategoryItems(
    String categoryId,
  ) async {
    try {
      final collectionReference = _firestore
          .collection('items')
          .orderBy('name')
          .where('categoryId', isEqualTo: categoryId);
      final result = await collectionReference.get();
      final items = <GroceryModel>[];
      for (final element in result.docs) {
        items.add(GroceryModel.fromJson(element.data()));
      }
      return items;
    } on FirebaseException catch (e) {
      log('fetchCategories Error Message => ${e.message}');
      return [];
    }
  }
}
