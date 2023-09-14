import 'package:groceries/domain/repositories/remote_config_repository.dart';

class FetchAppVersionUseCase {
  const FetchAppVersionUseCase(this._remoteConfigRepository);

  final RemoteConfigRepository _remoteConfigRepository;

  String call() => _remoteConfigRepository.appVersion;
}
