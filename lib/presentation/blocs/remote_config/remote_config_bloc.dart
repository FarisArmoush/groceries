import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/remote_config_use_case.dart';
import 'package:injectable/injectable.dart';

part 'remote_config_bloc.freezed.dart';
part 'remote_config_event.dart';
part 'remote_config_state.dart';

@injectable
class RemoteConfigBloc extends Bloc<RemoteConfigEvent, RemoteConfigState> {
  RemoteConfigBloc(this._remoteConfigUseCase)
      : super(const RemoteConfigState()) {
    on<RemoteConfigEvent>(
      (event, emit) => event.map(
        getAppVersion: (event) => _onGetAppVersion(event, emit),
        getShowDeleteAccountButton: (event) =>
            _onGetShowDeleteAccountButton(event, emit),
      ),
    );
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

  Future<void> _onGetShowDeleteAccountButton(
    _GetShowDeleteAccountButton event,
    Emitter<RemoteConfigState> emit,
  ) async {
    emit(
      state.copyWith(
        showDeleteAccountButton:
            _remoteConfigUseCase.fetchShowDeleteAccountButton(),
      ),
    );
  }
}
