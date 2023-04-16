import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/app/data/repositories/remote_config_repository.dart';
import 'package:groceries/app/data/repositories/url_launcher_repository.dart';

part 'remote_config_state.dart';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  RemoteConfigCubit() : super(RemoteConfigInitial());

  /// Use this variable when you want to use
  /// a value from Firebase Remote Config
  final remoteConfigRepo = RemoteConfigRepository();

  /// Use this value when you want to launch a url
  final urlLauncherRepo = UrlLauncherRepository();
}
