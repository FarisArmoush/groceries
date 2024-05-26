import 'package:groceries/data/data_sources/i_data_source.dart';
import 'package:groceries/data/data_sources/local/cache_priorities_data_source.dart';
import 'package:groceries/data/data_sources/remote/firestore_priorities_data_source.dart';
import 'package:groceries/data/models/priority/priority_model.dart';
import 'package:groceries/domain/repositories/priorities_repository.dart';
import 'package:groceries/shared/logger.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: PrioritiesRepository)
class PrioritiesRepositoryImpl implements PrioritiesRepository {
  PrioritiesRepositoryImpl(
    @Named.from(FirestorePrioritiesDataSource) this._remote,
    @Named.from(LocalPrioritiesDataSource) this._local,
  );

  final DataSource _remote;
  final DataSource _local;

  @override
  Future<List<PriorityModel>> fetchPriorities() async {
    final localPriorities = await _local.request<List<PriorityModel>>(
      requestType: RequestType.read,
    );
    if (localPriorities != null && localPriorities.isNotEmpty) {
      logger.verbose('priorities from Cache');
      return localPriorities;
    }

    final remotePriorities = await _remote.request<List<PriorityModel>>(
      requestType: RequestType.read,
    );

    final jsonedValue = remotePriorities?.map((e) => e.toJson()).toList();

    await _local.request<bool>(
      requestType: RequestType.write,
      body: jsonedValue,
    );

    logger.verbose('priorities from Remote');
    return remotePriorities ?? <PriorityModel>[];
  }
}
