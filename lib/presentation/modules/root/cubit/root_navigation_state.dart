part of 'root_navigation_cubit.dart';

final class RootNavigationState extends Equatable {
  const RootNavigationState({required this.index});

  final int index;

  @override
  List<Object> get props => [index];
}
