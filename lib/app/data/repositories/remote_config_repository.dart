// ignore_for_file: avoid_dynamic_calls

import 'dart:developer' as dev;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:groceries/app/data/data_sources/remote/remote_config_api.dart';

class RemoteConfigRepository {
  RemoteConfigRepository({
    FirebaseRemoteConfig? remoteConfig,
    RemoteConfigApi? remoteConfigApi,
  })  : _remoteConfig = remoteConfig ?? FirebaseRemoteConfig.instance,
        _remoteConfigApi = remoteConfigApi ?? RemoteConfigApi();

  final FirebaseRemoteConfig _remoteConfig;
  final RemoteConfigApi _remoteConfigApi;

  Future<void> init() async {
    try {
      await _remoteConfig.ensureInitialized();
      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: Duration.zero,
        ),
      );
      await _remoteConfig.fetchAndActivate();
    } on FirebaseException catch (e, stackTrace) {
      dev.log(
        'Unable to initialize remote config',
        error: e,
        stackTrace: stackTrace,
      );
    }
  }

  String get homeHeader => _remoteConfigApi.getHomeHeader();

  String get chooseAuthHeader =>
      _remoteConfigApi.getChooseAuthStrings()['header'] as String;

  String get chooseAuthBody =>
      _remoteConfigApi.getChooseAuthStrings()['body'] as String;

  String get onboardingFirstHeader =>
      _remoteConfigApi.getOnboardingStrings()['firstPageHeader'] as String;

  String get onboardingSecondHeader =>
      _remoteConfigApi.getOnboardingStrings()['secondPageHeader'] as String;

  String get onnboardingThirdHeader =>
      _remoteConfigApi.getOnboardingStrings()['thrirdPageHeader'] as String;

  String get onboardingFirstBody =>
      _remoteConfigApi.getOnboardingStrings()['firstPageBody'] as String;

  String get onboardingSecondBody =>
      _remoteConfigApi.getOnboardingStrings()['secondPageBody'] as String;

  String get onboardingThirdBody =>
      _remoteConfigApi.getOnboardingStrings()['thirdPageBody'] as String;

  String get forgotPasswordTitle =>
      _remoteConfigApi.getForgotPasswordStrings()['title'] as String;

  String get forgotPasswordBody =>
      _remoteConfigApi.getForgotPasswordStrings()['body'] as String;

  String get emailVerificationTitle =>
      _remoteConfigApi.getEmailVerificationStrings()['title'] as String;

  String get emailVerificationBody =>
      _remoteConfigApi.getEmailVerificationStrings()['body'] as String;

  String get arabicLocale => _remoteConfigApi.getArabicLocale();
  String get englishLocale => _remoteConfigApi.getEnglishLocale();

  String get developerTwitterAccountPath =>
      _remoteConfigApi.getDeveloperTwitterAccountLink()['path'] as String;

  String get developerTwitterAccountAuthority =>
      _remoteConfigApi.getDeveloperTwitterAccountLink()['authority'] as String;

  String get appWebsitePath =>
      _remoteConfigApi.getAppWebsiteLink()['path'] as String;

  String get appWebsiteAuthority =>
      _remoteConfigApi.getAppWebsiteLink()['authority'] as String;

  String get appTwitterAccountPath =>
      _remoteConfigApi.getAppTwitterAccountLink()['path'] as String;

  String get appTwitterAccountAuthority =>
      _remoteConfigApi.getAppTwitterAccountLink()['authority'] as String;

  dynamic get chooseAuthImages => _remoteConfigApi.getChooseAuthImages();
}
