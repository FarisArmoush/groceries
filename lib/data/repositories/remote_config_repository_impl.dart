import 'package:groceries/data/data_sources/remote_config_data_source.dart';
import 'package:groceries/domain/repositories/remote_config_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: RemoteConfigRepository)
class RemoteConfigRepositoryImpl extends RemoteConfigRepository {
  RemoteConfigRepositoryImpl(this._remoteConfigDataSource);

  final RemoteConfigDataSource _remoteConfigDataSource;

  @override
  String get appVersion => _remoteConfigDataSource.getAppVersion();
}
