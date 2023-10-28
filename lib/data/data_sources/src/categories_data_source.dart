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
      final result = await collectionReference.get(_fetchCategoriesGetOptions);
      final listOfMaps = <CategoryModel>[];
      for (final element in result.docs) {
        listOfMaps.add(CategoryModel.fromJson(element.data()));
      }
      return listOfMaps;
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
      final result = await collectionReference.get(_fetchCategoriesGetOptions);
      final listOfMaps = <CategoryModel>[];
      for (final element in result.docs) {
        listOfMaps.add(CategoryModel.fromJson(element.data()));
      }
      return listOfMaps;
    } on FirebaseException catch (e) {
      log('fetchCategories Error Message => ${e.message}');
      return [];
    }
  }

  final _fetchCategoriesGetOptions = GetOptions(
    source: AppHelpers.isFirstDayOfTheMonth()
        ? Source.server
        : Source.serverAndCache,
  );
}
