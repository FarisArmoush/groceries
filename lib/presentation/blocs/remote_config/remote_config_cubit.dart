import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';

part 'remote_config_state.dart';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  RemoteConfigCubit(this._remoteConfigUseCase)
      : super(const RemoteConfigState());

  final RemoteConfigUseCase _remoteConfigUseCase;
  String get appVersion => _remoteConfigUseCase.fetchAppVersion();
}
