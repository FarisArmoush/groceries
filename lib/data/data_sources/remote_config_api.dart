import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigApi {
  RemoteConfigApi({
    FirebaseRemoteConfig? remoteConfig,
  }) : _remoteConfig = remoteConfig ?? FirebaseRemoteConfig.instance;

  final FirebaseRemoteConfig _remoteConfig;

  dynamic getAppTwitterAccountLink() {
    final decodedLink = jsonDecode(
      _remoteConfig.getString('app_twitter_account_link'),
    );
    return decodedLink;
  }

  dynamic getAppWebsiteLink() {
    final decodedLink = jsonDecode(
      _remoteConfig.getString('app_website_link'),
    );
    return decodedLink;
  }

  dynamic getDeveloperTwitterAccountLink() {
    final decodedLink = jsonDecode(
      _remoteConfig.getString('developer_twitter_account_link'),
    );
    return decodedLink;
  }

  dynamic getPrivacyPolicyLink() {
    final decodedLink = jsonDecode(
      _remoteConfig.getString('privacy_policy_link'),
    );
    return decodedLink;
  }

  dynamic getTermsOfUseLink() {
    final decodedLink = jsonDecode(
      _remoteConfig.getString('terms_of_use_link'),
    );
    return decodedLink;
  }

  dynamic getAboutAppLink() {
    final decodedLink = jsonDecode(
      _remoteConfig.getString('about_app_link'),
    );
    return decodedLink;
  }

  String getAppVersion() {
    final version = _remoteConfig.getString('app_version');
    return version;
  }
}