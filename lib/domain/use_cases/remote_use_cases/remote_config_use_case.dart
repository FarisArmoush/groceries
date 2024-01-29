import 'package:groceries/domain/repositories/remote_config_repository.dart';

class RemoteConfigUseCase {
  RemoteConfigUseCase(this._remoteConfigRepository);

  final RemoteConfigRepository _remoteConfigRepository;

  String fetchAppVersion() => _remoteConfigRepository.appVersion ?? '';
}
