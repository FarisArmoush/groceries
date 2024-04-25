import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/data_sources/interfaces/constants_data_source.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/keys/firestore_keys.dart';
import 'package:groceries/utils/logger.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: ConstantsDataSource)
class FirestoreConstatntsDataSource implements ConstantsDataSource {
  const FirestoreConstatntsDataSource();

  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  @override
  Future<List<PriorityModel>> fetchPriorities() async {
    try {
      final collectionReference = _firestore
          .collection(FirestoreCollection.constants)
          .doc(FirestoreDocuments.priorities);
      final result = await collectionReference.get();

      final data = (result['data'] as List<dynamic>?) ?? [];

      final priorities =
          data.map((e) => PriorityModel.fromJson(e as JSON)).toList();
      logger.info('Fetched priorities successfully');
      return priorities;
    } on FirebaseException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      logger.error('Error fetching priorities');
      throw const AppNetworkException();
    }
  }
}
