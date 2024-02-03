import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'root_navigation_bloc.freezed.dart';
part 'root_navigation_event.dart';
part 'root_navigation_state.dart';

@injectable
class RootNavigationBloc
    extends Bloc<RootNavigationEvent, RootNavigationState> {
  RootNavigationBloc() : super(RootNavigationState()) {
    on<_NavigateToIndex>(_onNavigateToIndex);
  }
  void _onNavigateToIndex(
    _NavigateToIndex event,
    Emitter<RootNavigationState> emit,
  ) {
    emit(
      state.copyWith(
        index: event.index,
      ),
    );
  }
}
