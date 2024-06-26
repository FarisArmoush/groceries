part of 'remote_config_bloc.dart';

@freezed
class RemoteConfigState with _$RemoteConfigState {
  const factory RemoteConfigState({
    @Default('Default App Version Value') String appVersion,
    @Default(false) bool showDeleteAccountButton,
  }) = _RemoteConfigState;

  const RemoteConfigState._();
}
