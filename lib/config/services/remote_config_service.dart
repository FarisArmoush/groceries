import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:groceries/utils/logger.dart';

class RemoteConfigService {
  RemoteConfigService(this._remoteConfig);

  final FirebaseRemoteConfig _remoteConfig;

  Future<void> init() async {
    try {
      await _remoteConfig.ensureInitialized();
      await _remoteConfig.setConfigSettings(
        RemoteConfigSettings(
          fetchTimeout: const Duration(seconds: 10),
          minimumFetchInterval: Duration.zero,
        ),
      );
      await _remoteConfig.fetchAndActivate();
    } on FirebaseException catch (e, stackTrace) {
      logger.error('Unable to initialize remote config', e, stackTrace);
    }
  }
}
