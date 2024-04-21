import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/data_sources/interfaces/categories_data_source.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/keys/firestore_keys.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: CategoriesDataSource)
class FirestoreCategoriesDataSource implements CategoriesDataSource {
  const FirestoreCategoriesDataSource();

  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  @override
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
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      throw const AppNetworkException();
    }
  }
}