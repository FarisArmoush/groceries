import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_app_version_use_case.dart';

part 'remote_config_state.dart';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  RemoteConfigCubit(this._fetchAppVersionUseCase)
      : super(RemoteConfigInitial());

  final FetchAppVersionUseCase _fetchAppVersionUseCase;

  String get appVersion => _fetchAppVersionUseCase.call();
}
