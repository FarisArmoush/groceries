part of '../root.dart';

final class RootNavigationState extends Equatable {
  const RootNavigationState({required this.index});

  final int index;

  @override
  List<Object> get props => [index];
}
