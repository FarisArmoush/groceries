part of '../root.dart';

class RootNavigationCubit extends Cubit<RootNavigationState> {
  RootNavigationCubit() : super(const RootNavigationState(index: 0));

  void navigateToIndex(int index) => emit(RootNavigationState(index: index));
}
