import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';

part 'remote_config_state.dart';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  RemoteConfigCubit(this._fetchAppVersionUseCase)
      : super(const RemoteConfigState());

  final FetchAppVersionUseCase _fetchAppVersionUseCase;
  // TODO(FARIS): rename use case to `RemoteConfigUseCase` and access values through the state.
  String get appVersion => _fetchAppVersionUseCase.call();
}
