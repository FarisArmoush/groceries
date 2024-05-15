import 'package:groceries/data/data_sources/i_data_source.dart';
import 'package:groceries/data/models/priority/priority_model.dart';
import 'package:groceries/data/services/cache/cache_service.dart';
import 'package:groceries/data/services/cache/hive_cache_service.dart';
import 'package:groceries/data/services/stale_data_checker.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: DataSource)
class LocalPrioritiesDataSource implements DataSource {
  LocalPrioritiesDataSource(
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
      RequestType.write => _write(
          (body ?? <Map<String, dynamic>>[]) as List<Map<String, dynamic>>,
        ),
      RequestType.read => _read(),
      _ => Future.delayed(Duration.zero),
    };
  }

  Future<T?> _write<T>(Object body) async {
    return await _cacheService.write<List<Map<String, dynamic>>>(
      'priorities',
      body as List<Map<String, dynamic>>,
    ) as T;
  }

  Future<T?> _read<T>() async {
    final dataIsStale = !(await _staleDataChecker.shouldFetchFromRemote(
      lastFetchTimeKey: 'lastPrioritiesFetch',
      days: 1,
    ));
    final value = await _cacheService.read<List<Map<String, dynamic>>>(
      'priorities',
    );
    if (value != null && value.isNotEmpty && dataIsStale) {
      final cachedValue = value.map(PriorityModel.fromJson).toList();
      return cachedValue as T;
    }
    return <PriorityModel>[] as T;
  }
}
