abstract interface class SharedPreferencesUtil<T> {
  Future<void> cacheValue(T value);
  Future<void> loadValue();
  Future<void> setValue(T value);
}
