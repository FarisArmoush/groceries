part of '../data_sources.dart';

class CategoriesDataSource {
  CategoriesDataSource(this._firestore);

  final FirebaseFirestore _firestore;

  Future<List<CategoryModel>> fetchParentCategories() async {
    try {
      final collectionReference = _firestore
          .collection('category')
          .orderBy('name')
          .where('parentCategoryId', isNull: true);
      final result = await collectionReference.get();
      final parentCategories = <CategoryModel>[];
      for (final element in result.docs) {
        parentCategories.add(CategoryModel.fromJson(element.data()));
      }
      return parentCategories;
    } on FirebaseException catch (e) {
      log('fetchCategories Error Message => ${e.message}');
      return [];
    }
  }

  Future<List<CategoryModel>> fetchSubCategories(
    String parentCategoryId,
  ) async {
    try {
      final collectionReference = _firestore
          .collection('category')
          .orderBy('name')
          .where('parentCategoryId', isEqualTo: parentCategoryId);
      final result = await collectionReference.get();
      final subCategories = <CategoryModel>[];
      for (final element in result.docs) {
        subCategories.add(CategoryModel.fromJson(element.data()));
      }
      return subCategories;
    } on FirebaseException catch (e) {
      log('fetchCategories Error Message => ${e.message}');
      return [];
    }
  }
}
