import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'root_navigation_state.dart';

class RootNavigationCubit extends Cubit<RootNavigationState> {
  RootNavigationCubit() : super(const RootNavigationState(index: 0));

  void navigateToIndex(int index) => emit(RootNavigationState(index: index));
}
