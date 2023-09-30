part of 'root_navigation_bloc.dart';

@freezed
class RootNavigationEvent with _$RootNavigationEvent {
  const factory RootNavigationEvent.navigateToIndex(int index) =
      _NavigateToIndex;
}
