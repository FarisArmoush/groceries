import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/data_sources/interfaces/base_groceries_data_source.dart';
import 'package:groceries/data/models/grocery/grocery_model.dart';
import 'package:groceries/shared/exceptions/app_network_exception.dart';
import 'package:groceries/shared/logger.dart';
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
          .collection('items')
          .orderBy('name')
          .where('categoryId', isEqualTo: categoryId);

      final result = await collectionReference.get();

      final items = <GroceryModel>[];

      for (final element in result.docs) {
        items.add(GroceryModel.fromJson(element.data()));
      }
      logger.info('Fetched items with the id: $categoryId successfully');
      return items;
    } on FirebaseException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      logger.error('Failed to fetch items with the id $categoryId');
      throw const AppNetworkException();
    }
  }
}
