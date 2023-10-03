part of 'root_navigation_bloc.dart';

@freezed
class RootNavigationState with _$RootNavigationState {
  factory RootNavigationState({
    @Default(0) int index,
  }) = _RootNavigationState;

  const RootNavigationState._();
}
