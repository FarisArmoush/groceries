abstract interface class CacheService {
  Future<bool> write<T>(String key, T value);
  Future<T?> read<T>(String key);
}
