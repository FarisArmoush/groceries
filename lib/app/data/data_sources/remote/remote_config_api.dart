import 'dart:convert';

import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigApi {
  RemoteConfigApi({FirebaseRemoteConfig? remoteConfig})
      : _remoteConfig = remoteConfig ?? FirebaseRemoteConfig.instance;

  final FirebaseRemoteConfig _remoteConfig;

  String getArabicLocale() => _remoteConfig.getString('ar');
  String getEnglishLocale() => _remoteConfig.getString('en');

  String getName() => _remoteConfig.getString('name');

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

  dynamic getChooseAuthStrings() {
    final decodedJson = jsonDecode(
      _remoteConfig.getString('choose_auth_strings'),
    );
    return decodedJson;
  }

  String getHomeHeader() => _remoteConfig.getString('home_header');

  dynamic getOnboardingStrings() {
    final decodedJson = jsonDecode(
      _remoteConfig.getString('onboarding_strings'),
    );
    return decodedJson;
  }

  dynamic getForgotPasswordStrings() {
    final decodedJson = jsonDecode(
      _remoteConfig.getString('forgot_password_strings'),
    );
    return decodedJson;
  }

  dynamic getEmailVerificationStrings() {
    final decodedJson = jsonDecode(
      _remoteConfig.getString('email_verification_strings'),
    );
    return decodedJson;
  }

  dynamic getChooseAuthImages() {
    final decodedJson = jsonDecode(
      _remoteConfig.getString('choose_auth_images'),
    );
    return decodedJson;
  }
}
