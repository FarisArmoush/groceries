import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/data_sources/i_data_source.dart';
import 'package:groceries/data/models/priority/priority_model.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:groceries/utils/logger.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: DataSource)
class FirestorePrioritiesDataSource implements DataSource {
  @override
  Future<T?> request<T>({
    required RequestType requestType,
    Object? body,
    String? endpoint,
  }) async {
    return switch (requestType) {
      RequestType.read => _read(),
      _ => null,
    };
  }

  Future<T> _read<T>() async {
    try {
      final collectionReference = FirebaseFirestore.instance
          .collection('constants')
          .doc('priorities');
      final result = await collectionReference.get();

      final data = (result['data'] as List<dynamic>?) ?? [];

      final priorities = data
          .map((e) => PriorityModel.fromJson(e as Map<String, dynamic>))
          .toList();

      return priorities as T;
    } on FirebaseException catch (e) {
      logger.error(e.message, e, e.stackTrace);
      throw AppNetworkException.fromCode(e.code);
    } catch (_) {
      throw const AppNetworkException();
    }
  }
}
