abstract class BaseUrlLauncherRepository {
  Future<void> launchDevTwitterAccount();
  Future<void> launchAppTwitterAccount();
  Future<void> sendFeedbackToAppEmail();
  Future<void> launchAppWebsite();
  Future<void> launchTermsOfUseWebsite();
  Future<void> launchPrivacyPolicyWebsite();
  Future<void> launchAboutAppWebsite();
}
