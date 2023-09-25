part of '../data_sources.dart';

class BaseGroceriesDataSource {
  BaseGroceriesDataSource(this._firestore);

  final FirebaseFirestore _firestore;

  Future<List<Map<String, Object?>>> fetchAllGroceries() async {
    try {
      final collectionReference =
          _firestore.collection('items').orderBy('name');
      final result = await collectionReference.get();
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
}
