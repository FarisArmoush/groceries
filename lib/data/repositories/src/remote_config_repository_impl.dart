part of '../repositories.dart';

class RemoteConfigRepositoryImpl extends RemoteConfigRepository {
  RemoteConfigRepositoryImpl(this._remoteConfigDataSource);

  final RemoteConfigDataSource _remoteConfigDataSource;

  @override
  String get appVersion => _remoteConfigDataSource.getAppVersion();
}
