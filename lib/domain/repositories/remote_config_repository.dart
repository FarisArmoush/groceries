abstract class RemoteConfigRepository {
  /// Initializes Remote Config
  Future<void> init();

  /// App Version
  String get appVersion;
}
