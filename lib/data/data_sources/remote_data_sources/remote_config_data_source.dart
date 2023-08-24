import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigDataSource {
  RemoteConfigDataSource({
    FirebaseRemoteConfig? remoteConfig,
  }) : _remoteConfig = remoteConfig ?? FirebaseRemoteConfig.instance;

  final FirebaseRemoteConfig _remoteConfig;

  String getAppVersion() => _remoteConfig.getString('app_version');
}
