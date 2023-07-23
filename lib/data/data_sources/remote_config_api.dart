import 'package:firebase_remote_config/firebase_remote_config.dart';

class RemoteConfigApi {
  RemoteConfigApi({
    FirebaseRemoteConfig? remoteConfig,
  }) : _remoteConfig = remoteConfig ?? FirebaseRemoteConfig.instance;

  final FirebaseRemoteConfig _remoteConfig;

  String getAppVersion() {
    final version = _remoteConfig.getString('app_version');
    return version;
  }

  String fetchTestUri() => _remoteConfig.getString('test_url');
}
