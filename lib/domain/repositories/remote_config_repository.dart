abstract interface class RemoteConfigRepository {
  const RemoteConfigRepository();

  /// App Version
  String? get appVersion;

  /// Show Delete Account Button
  bool? get showDeleteAccountButton;
}
