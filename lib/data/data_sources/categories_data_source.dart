import 'dart:developer' as developer;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/utils/keys/firestore_keys.dart';
import 'package:injectable/injectable.dart';

@singleton
class CategoriesDataSource {
  const CategoriesDataSource();

  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  Future<List<CategoryModel>> fetchCategories([String? categoryId]) async {
    try {
      Query<Map<String, Object?>> query;

      if (categoryId != null) {
        // Sub-Categories Query
        query = _firestore
            .collection(FirestoreCollection.category)
            .orderBy(FirestoreField.name)
            .where(FirestoreField.parentCategoryId, isEqualTo: categoryId);
      } else {
        // Parent-Categories Query
        query = _firestore
            .collection(FirestoreCollection.category)
            .orderBy(FirestoreField.name)
            .where(FirestoreField.parentCategoryId, isNull: true);
      }

      final result = await query.get();
      final categories = <CategoryModel>[];
      for (final document in result.docs) {
        final json = document.data();
        categories.add(CategoryModel.fromJson(json));
      }
      return categories;
    } on FirebaseException catch (e) {
      developer.log('fetchCategories Error Message => ${e.message}');
      return [];
    }
  }
}
