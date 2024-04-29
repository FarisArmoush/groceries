import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:groceries/data/data_sources/interfaces/remote_config_data_source.dart';
import 'package:groceries/utils/keys/remote_config_keys.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: RemoteConfigDataSource)
class FirebaseRemoteConfigDataSource implements RemoteConfigDataSource {
  const FirebaseRemoteConfigDataSource();

  FirebaseRemoteConfig get _remoteConfig => FirebaseRemoteConfig.instance;

  @override
  String get appVersion => _remoteConfig.getString(
        RemoteConfigKeys.appVersion,
      );

  @override
  bool? get showDeleteAccountButton => _remoteConfig.getBool(
        RemoteConfigKeys.showDeleteAccountButton,
      );
}
