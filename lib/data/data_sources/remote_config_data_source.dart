import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:groceries/utils/keys/remote_config_keys.dart';
import 'package:injectable/injectable.dart';

@singleton
class RemoteConfigDataSource {
  const RemoteConfigDataSource();

  FirebaseRemoteConfig get _remoteConfig => FirebaseRemoteConfig.instance;

  String getAppVersion() => _remoteConfig.getString(
        RemoteConfigKeys.appVersion,
      );
  bool getShowDeleteAccountButton() => _remoteConfig.getBool(
        RemoteConfigKeys.showDeleteAccountButton,
      );
  bool getShowAdditionalResources() => _remoteConfig.getBool(
        RemoteConfigKeys.showAdditionalResources,
      );
}
