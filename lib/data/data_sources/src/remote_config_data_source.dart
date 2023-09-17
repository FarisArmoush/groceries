part of '../data_sources.dart';

class RemoteConfigDataSource {
  RemoteConfigDataSource({required this.remoteConfig});

  final FirebaseRemoteConfig remoteConfig;

  String getAppVersion() => remoteConfig.getString('app_version');
}
