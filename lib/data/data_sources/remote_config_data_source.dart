import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:injectable/injectable.dart';

@singleton
class RemoteConfigDataSource {
  const RemoteConfigDataSource();

  FirebaseRemoteConfig get _remoteConfig => FirebaseRemoteConfig.instance;

  String getAppVersion() => _remoteConfig.getString('app_version');
  bool getShowDeleteAccountButton() => _remoteConfig.getBool(
        'show_delete_account_button',
      );
  bool getShowAdditionalResources() => _remoteConfig.getBool(
        'show_additional_resources',
      );
}
