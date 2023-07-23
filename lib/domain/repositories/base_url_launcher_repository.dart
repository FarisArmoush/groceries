abstract interface class BaseUrlLauncherRepository {
  Future<void> launchTermsOfUseWebsite();
  Future<void> launchPrivacyPolicyWebsite();
  Future<void> launchAboutAppWebsite();
}
