import 'package:groceries/data/data_sources/remote_config_data_source.dart';
import 'package:groceries/domain/repositories/remote_config_repository.dart';

class RemoteConfigRepositoryImpl extends RemoteConfigRepository {
  RemoteConfigRepositoryImpl({
    RemoteConfigDataSource? remoteConfigApi,
  }) : _remoteConfigApi = remoteConfigApi ?? RemoteConfigDataSource();

  final RemoteConfigDataSource _remoteConfigApi;

  @override
  Future<void> init() => _remoteConfigApi.init();

  @override
  String get appVersion => _remoteConfigApi.getAppVersion();
}
