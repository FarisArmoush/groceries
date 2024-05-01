import 'package:groceries/data/services/cache/cache_service.dart';
import 'package:groceries/data/services/cache/hive_cache_service.dart';
import 'package:groceries/data/services/cache/shared_preferences_cache_service.dart';
import 'package:injectable/injectable.dart';

abstract interface class StaleDataChecker {
  Future<bool> shouldFetchFromRemote({
    required String lastFetchTimeKey,
    required int days,
  });
}

@named
@Injectable(as: StaleDataChecker)
class HiveStaleDataChecker implements StaleDataChecker {
  const HiveStaleDataChecker(
    @Named.from(HiveCacheService) this._cacheService,
  );

  final CacheService _cacheService;

  @override
  Future<bool> shouldFetchFromRemote({
    required String lastFetchTimeKey,
    required int days,
  }) async {
    final lastFetchTimeRaw = await _cacheService.read<String>(lastFetchTimeKey);

    final now = DateTime.now();

    final lastFetchTime = DateTime.tryParse(lastFetchTimeRaw ?? '') ?? now;

    final shouldFetchFromRemote = now.difference(lastFetchTime).inSeconds <= 5;

    if (shouldFetchFromRemote) {
      await _cacheService.write(lastFetchTimeKey, now.toString());
    }

    return shouldFetchFromRemote;
  }
}

@named
@Injectable(as: StaleDataChecker)
class SharedPreferencesStaleDataChecker implements StaleDataChecker {
  const SharedPreferencesStaleDataChecker(
    @Named.from(SharedPreferencesCacheService) this._cacheService,
  );

  final CacheService _cacheService;

  @override
  Future<bool> shouldFetchFromRemote({
    required String lastFetchTimeKey,
    required int days,
  }) async {
    final lastFetchTimeRaw = await _cacheService.read<String>(lastFetchTimeKey);

    final now = DateTime.now();

    final lastFetchTime = DateTime.tryParse(lastFetchTimeRaw ?? '') ?? now;

    final shouldFetchFromRemote = now.difference(lastFetchTime).inDays <= days;

    if (shouldFetchFromRemote) {
      await _cacheService.write(lastFetchTimeKey, now.toString());
    }

    return !shouldFetchFromRemote;
  }
}
