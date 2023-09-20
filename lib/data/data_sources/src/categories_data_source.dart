part of '../data_sources.dart';

class CategoriesDataSource {
  CategoriesDataSource(this.firestore);

  final FirebaseFirestore firestore;

  Future<List<Map<String, Object?>>> fetchCategories() async {
    try {
      final collectionReference =
          firestore.collection('category').orderBy('name');
      final result = await collectionReference.get(_fetchCategoriesGetOptions);
      final listOfMaps = <Map<String, Object?>>[];
      for (final element in result.docs) {
        listOfMaps.add(element.data());
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
