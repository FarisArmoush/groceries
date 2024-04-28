import 'package:groceries/data/data_sources/interfaces/remote_config_data_source.dart';
import 'package:groceries/data/data_sources/remote/firebase_remote_config_data_source.dart';
import 'package:groceries/domain/repositories/remote_config_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: RemoteConfigRepository)
class RemoteConfigRepositoryImpl implements RemoteConfigRepository {
  const RemoteConfigRepositoryImpl(
    @Named.from(FirebaseRemoteConfigDataSource) this._dataSource,
  );

  final RemoteConfigDataSource _dataSource;

  @override
  String get appVersion => _dataSource.appVersion;

  @override
  bool? get showAdditionalResources => _dataSource.showAdditionalResources;

  @override
  bool? get showDeleteAccountButton => _dataSource.showDeleteAccountButton;
}
