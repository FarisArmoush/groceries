import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/data_sources/interfaces/base_groceries_data_source.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/keys/firestore_keys.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: BaseGroceriesDataSource)
class FirestoreBaseGroceriesDataSource implements BaseGroceriesDataSource {
  const FirestoreBaseGroceriesDataSource();

  FirebaseFirestore get _firestore => FirebaseFirestore.instance;
  @override
  Future<List<GroceryModel>> fetchCategoryItems(String? categoryId) async {
    try {
      final collectionReference = _firestore
          .collection(FirestoreCollection.items)
          .orderBy(FirestoreField.name)
          .where(FirestoreField.categoryId, isEqualTo: categoryId);

      final result = await collectionReference.get();

      final items = <GroceryModel>[];

      for (final element in result.docs) {
        items.add(GroceryModel.fromJson(element.data()));
      }
      return items;
    } on FirebaseException catch (e) {
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      throw const AppNetworkException();
    }
  }
}