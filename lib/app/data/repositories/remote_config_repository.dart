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
}
