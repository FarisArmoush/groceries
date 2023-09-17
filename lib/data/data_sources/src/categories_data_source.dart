part of '../data_sources.dart';

class CategoriesDataSource {
  CategoriesDataSource(this.firestore);

  final FirebaseFirestore firestore;

  Future<void> fetchCategories() async {
    firestore.toString();
    throw UnimplementedError();
  }
}
