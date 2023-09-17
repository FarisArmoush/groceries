part of '../../use_cases.dart';

class RemoteConfigUseCase {
  RemoteConfigUseCase(this._remoteConfigRepository);

  final RemoteConfigRepository _remoteConfigRepository;

  String fetchAppVersion() => _remoteConfigRepository.appVersion;
}
