abstract interface class SharedPreferencesUtil<T> {
  Future<void> cache(T value);
  Future<void> load();
  Future<void> set(T value);
}
