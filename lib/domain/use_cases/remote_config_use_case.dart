import 'package:groceries/domain/repositories/remote_config_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RemoteConfigUseCase {
  RemoteConfigUseCase(this._remoteConfigRepository);

  final RemoteConfigRepository _remoteConfigRepository;

  String fetchAppVersion() => _remoteConfigRepository.appVersion ?? '';
  bool fetchShowDeleteAccountButton() =>
      _remoteConfigRepository.showDeleteAccountButton ?? false;
}
