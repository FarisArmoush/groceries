part of 'remote_config_bloc.dart';

@freezed
class RemoteConfigEvent with _$RemoteConfigEvent {
  const factory RemoteConfigEvent.getAppVersion() = _GetAppVersion;

  const factory RemoteConfigEvent.getShowDeleteAccountButton() =
      _GetShowDeleteAccountButton;
}
