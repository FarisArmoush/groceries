part of '../../use_cases.dart';

class FetchAppVersionUseCase extends OutputUseCase<String> {
  FetchAppVersionUseCase(this._remoteConfigRepository);

  final RemoteConfigRepository _remoteConfigRepository;
  @override
  String call() => _remoteConfigRepository.appVersion;
}
