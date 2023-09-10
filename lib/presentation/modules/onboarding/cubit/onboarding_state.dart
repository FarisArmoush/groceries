part of '../onboarding.dart';

final class OnboardingState extends Equatable {
  const OnboardingState({required this.index});

  final int index;

  @override
  List<Object> get props => [index];
}
