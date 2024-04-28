import 'package:groceries/data/cache_service.dart';
import 'package:groceries/data/data_sources/interfaces/constants_data_source.dart';
import 'package:groceries/data/data_sources/local/cache_constants_data_source.dart';
import 'package:groceries/data/data_sources/remote/firestore_constants_data_source.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/domain/repositories/constants_repository.dart';
import 'package:groceries/utils/keys/storage_keys.dart';
import 'package:groceries/utils/logger.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ConstantsRepository)
class ConstantsRepositoryImpl implements ConstantsRepository {
  ConstantsRepositoryImpl(
    @Named.from(FirestoreConstatntsDataSource) this._dataSource,
    @Named.from(LocalConstantsDataSource) this._localDataSource,
    this._cacheService,
  );

  final ConstantsDataSource _dataSource;
  final ConstantsDataSource _localDataSource;
  final CacheService _cacheService;

  @override
  Future<List<PriorityModel>> fetchPriorities() async {
    final cachedPriorities = await _checkCachedPriorities();

    if (cachedPriorities != null) {
      logger.info('Fetched Priorities from cache');
      return cachedPriorities;
    }

    final remotePriorities = await _dataSource.fetchPriorities();
    final jsonedPriorities = remotePriorities.map((e) => e.toJson()).toList();

    await _cacheService.write<List<JSON>>(
      StorageKeys.priorities,
      jsonedPriorities,
    );
    await _cacheService.write<String>(
      StorageKeys.lastPrioritiesFetch,
      DateTime.now().toString(),
    );
    logger.info('Fetched Priorities from Firestore');
    return remotePriorities;
  }

  Future<List<PriorityModel>?> _checkCachedPriorities() async {
    final localPriorities = await _localDataSource.fetchPriorities();
    final lastFetchTimeValue = await _cacheService.read<String>(
      StorageKeys.lastPrioritiesFetch,
    );
    final lastFetchTime =
        DateTime.tryParse(lastFetchTimeValue ?? '') ?? DateTime.now();

    final hasBeenLessThanOneDay =
        DateTime.now().difference(lastFetchTime).inDays <= 1;

    if (localPriorities.isNotEmpty && hasBeenLessThanOneDay) {
      return localPriorities;
    }
    return null;
  }
}
