import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/utils/keys/firestore_keys.dart';
import 'package:injectable/injectable.dart';

// TODO(FarisArmoush): refactor/ CategoriesDataSource #313 (https://github.com/FarisArmoush/groceries/issues/313)
@singleton
class CategoriesDataSource {
  const CategoriesDataSource();

  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  Future<List<CategoryModel>> fetchParentCategories() async {
    try {
      final collectionReference = _firestore
          .collection(FirestoreCollection.category)
          .orderBy(FirestoreField.name)
          .where(FirestoreField.parentCategoryId, isNull: true);
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
    String? parentCategoryId,
  ) async {
    try {
      final collectionReference = _firestore
          .collection(FirestoreCollection.category)
          .orderBy(FirestoreField.name)
          .where(FirestoreField.parentCategoryId, isEqualTo: parentCategoryId);
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
