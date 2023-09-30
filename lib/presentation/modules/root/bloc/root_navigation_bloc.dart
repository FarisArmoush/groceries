import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root_navigation_event.dart';
part 'root_navigation_state.dart';
part 'root_navigation_bloc.freezed.dart';

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
