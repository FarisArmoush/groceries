import 'package:groceries/data/data_sources/instances.dart';
import 'package:groceries/data/data_sources/interfaces/remote_config_data_source.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: RemoteConfigDataSource)
class FirebaseRemoteConfigDataSource implements RemoteConfigDataSource {
  const FirebaseRemoteConfigDataSource();

  @override
  String get appVersion => remoteConfig.getString(
        'app_version',
      );

  @override
  bool? get showDeleteAccountButton => remoteConfig.getBool(
        'show_delete_account_button',
      );
}
