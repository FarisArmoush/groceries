import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/data/repositories/remote_config_repository.dart';
import 'package:groceries/data/repositories/url_launcher_repository.dart';

part 'remote_config_state.dart';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  RemoteConfigCubit() : super(RemoteConfigInitial());

  final urlLauncherRepo = UrlLauncherRepository();

  final remoteConfigRepository = RemoteConfigRepository();
}
