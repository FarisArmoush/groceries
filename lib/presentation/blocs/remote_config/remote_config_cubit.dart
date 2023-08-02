import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/data/repositories/remote_config_repository_impl.dart';

part 'remote_config_state.dart';

class RemoteConfigCubit extends Cubit<RemoteConfigState> {
  RemoteConfigCubit() : super(RemoteConfigInitial());

  final remoteConfigRepository = RemoteConfigRepositoryImpl();
}
