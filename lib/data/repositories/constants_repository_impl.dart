import 'package:groceries/data/data_sources/i_data_source.dart';
import 'package:groceries/data/data_sources/local/cache_constants_data_source.dart';
import 'package:groceries/data/data_sources/remote/firestore_constants_data_source.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/domain/repositories/constants_repository.dart';
import 'package:groceries/utils/logger.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ConstantsRepository)
class ConstantsRepositoryImpl implements ConstantsRepository {
  ConstantsRepositoryImpl(
    @Named.from(FirestoreConstatntsDataSource) this._dataSource,
    @Named.from(LocalConstantsDataSource) this._localDataSource,
  );

  final DataSource _dataSource;
  final DataSource _localDataSource;

  @override
  Future<List<PriorityModel>> fetchPriorities() async {
    final localPriorities = await _localDataSource.request<List<PriorityModel>>(
      requestType: RequestType.read,
    );
    if (localPriorities != null && localPriorities.isNotEmpty) {
      logger.verbose('priorities from Cache');
      return localPriorities;
    }

    final remotePriorities = await _dataSource.request<List<PriorityModel>>(
      requestType: RequestType.read,
    );

    final jsonedValue = remotePriorities?.map((e) => e.toJson()).toList();

    await _localDataSource.request<bool>(
      requestType: RequestType.create,
      body: jsonedValue,
    );

    logger.verbose('priorities from Remote');
    return remotePriorities ?? <PriorityModel>[];
  }
}
