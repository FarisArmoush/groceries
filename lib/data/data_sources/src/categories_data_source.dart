part of '../data_sources.dart';

class CategoriesDataSource {
  CategoriesDataSource({FirebaseFirestore? firestore})
      : _firestore = firestore ?? FirebaseFirestore.instance;

  final FirebaseFirestore _firestore;

  Future<void> fetchCategories() async {
    _firestore.doc('');
  }
}
