import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigDataSource {
  const RemoteConfigDataSource(this._remoteConfig);

  final FirebaseRemoteConfig _remoteConfig;

  String getAppVersion() => _remoteConfig.getString('app_version');
}
