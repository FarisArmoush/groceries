part of '../data_sources.dart';

class RemoteConfigDataSource {
  RemoteConfigDataSource({
    FirebaseRemoteConfig? remoteConfig,
  }) : _remoteConfig = remoteConfig ?? FirebaseRemoteConfig.instance;

  final FirebaseRemoteConfig _remoteConfig;

  String getAppVersion() => _remoteConfig.getString('app_version');
}
