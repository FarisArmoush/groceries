part of '../onboarding.dart';

final class OnboardingState extends Equatable {
  const OnboardingState({
    required this.pageController,
    required this.index,
  });

  final int index;
  final PageController pageController;

  @override
  List<Object> get props => [index];
}
