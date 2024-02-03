import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/remote_config_use_case.dart';
import 'package:injectable/injectable.dart';

part 'remote_config_bloc.freezed.dart';
part 'remote_config_event.dart';
part 'remote_config_state.dart';

@injectable
class RemoteConfigBloc extends Bloc<RemoteConfigEvent, RemoteConfigState> {
  RemoteConfigBloc(this._remoteConfigUseCase)
      : super(const RemoteConfigState()) {
    on<_GetAppVersion>(_onGetAppVersion);
  }
  final RemoteConfigUseCase _remoteConfigUseCase;

  void _onGetAppVersion(
    _GetAppVersion event,
    Emitter<RemoteConfigState> emit,
  ) {
    emit(
      state.copyWith(
        appVersion: _remoteConfigUseCase.fetchAppVersion(),
      ),
    );
  }
}
