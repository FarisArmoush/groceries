import 'dart:developer' as dev;

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:groceries/data/data_sources/remote_config_api.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

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
          fetchTimeout: 10.seconds,
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

  String get appVersion => _remoteConfigApi.getAppVersion();
}
