import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/utils/keys/firestore_keys.dart';
import 'package:injectable/injectable.dart';

@singleton
class BaseGroceriesDataSource {
  const BaseGroceriesDataSource();

  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  Future<List<GroceryModel>> fetchCategoryItems(
    String? categoryId,
  ) async {
    try {
      final collectionReference = _firestore
          .collection(FirestoreCollection.items)
          .orderBy(FirestoreField.name)
          .where(
            FirestoreField.categoryId,
            isEqualTo: categoryId,
          );
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
