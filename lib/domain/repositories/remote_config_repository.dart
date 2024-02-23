abstract class RemoteConfigRepository {
  const RemoteConfigRepository();

  /// App Version
  String? get appVersion;

  /// Show Delete Account Button
  bool? get showDeleteAccountButton;

  /// Show Additional Resources
  bool? get showAdditionalResources;
}
