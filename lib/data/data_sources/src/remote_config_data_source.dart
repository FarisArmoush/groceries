part of '../data_sources.dart';

class RemoteConfigDataSource {
  const RemoteConfigDataSource(this._remoteConfig);

  final FirebaseRemoteConfig _remoteConfig;

  String getAppVersion() => _remoteConfig.getString('app_version');
}
