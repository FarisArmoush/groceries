import 'package:groceries/app/data/repositories/remote_config_repository.dart';
import 'package:groceries/app/domain/repositories/base_url_launcher_repository.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherRepository extends BaseUrlLauncherRepository {
  static final remoteConfigRepo = RemoteConfigRepository();

  @override
  Future<void> launchAppTwitterAccount() async {
    final uri = Uri.https(
      remoteConfigRepo.appTwitterAccountAuthority,
      remoteConfigRepo.appTwitterAccountPath,
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Future<void> launchAppWebsite() async {
    final uri = Uri.https(
      remoteConfigRepo.appWebsiteAuthority,
      remoteConfigRepo.appWebsitePath,
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Future<void> launchDevTwitterAccount() async {
    final uri = Uri.https(
      remoteConfigRepo.developerTwitterAccountAuthority,
      remoteConfigRepo.developerTwitterAccountPath,
    );
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Future<void> sendFeedbackToAppEmail() async {
    throw UnimplementedError();
  }
}
