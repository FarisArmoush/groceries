import 'package:groceries/data/services/cache/cache_service.dart';
import 'package:groceries/utils/logger.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: CacheService)
class HiveCacheService implements CacheService {
  Future<void> _initializeBox<T>(String key) async {
    if (Hive.isBoxOpen(key)) return;
    await Hive.openBox<T>(key);
  }

  @override
  Future<bool> write<T>(String key, T value) async {
    await _initializeBox<T>(key);
    final box = Hive.box<T>(key);
    try {
      await box.put(key, value);
      return true;
    } catch (e) {
      logger.error('Error writing to Hive: $e');
      return false;
    }
  }

  @override
  Future<T?> read<T>(String key) async {
    await _initializeBox<T>(key);
    final box = Hive.box<T>(key);
    return box.get(key);
  }
}
