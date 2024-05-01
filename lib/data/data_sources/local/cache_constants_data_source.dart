import 'package:groceries/data/data_sources/i_data_source.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/data/services/cache/cache_service.dart';
import 'package:groceries/data/services/cache/hive_cache_service.dart';
import 'package:groceries/data/services/stale_data_checker.dart';
import 'package:groceries/utils/keys/storage_keys.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: DataSource)
class LocalConstantsDataSource implements DataSource {
  LocalConstantsDataSource(
    @Named.from(HiveCacheService) this._cacheService,
    @Named.from(HiveStaleDataChecker) this._staleDataChecker,
  );
  final CacheService _cacheService;
  final StaleDataChecker _staleDataChecker;

  @override
  Future<T?> request<T>({
    required RequestType requestType,
    Object? body,
  }) {
    return switch (requestType) {
      RequestType.create => _create(
          (body ?? <JSON>[]) as List<JSON>,
        ),
      RequestType.read => _read(),
      _ => Future.delayed(Duration.zero),
    };
  }

  Future<T?> _create<T>(Object body) async {
    return await _cacheService.write<List<JSON>>(
      StorageKeys.priorities,
      body as List<Map<String, dynamic>>,
    ) as T;
  }

  Future<T?> _read<T>() async {
    final dataIsStale = !(await _staleDataChecker.shouldFetchFromRemote(
      lastFetchTimeKey: StorageKeys.lastPrioritiesFetch,
      days: 30,
    ));
    final value = await _cacheService.read<List<JSON>>(StorageKeys.priorities);
    if (value != null && value.isNotEmpty && dataIsStale) {
      final cachedValue = value.map(PriorityModel.fromJson).toList();
      return cachedValue as T;
    }
    return <PriorityModel>[] as T;
  }
}
