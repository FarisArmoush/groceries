part of '../onboarding.dart';

class OnboardingNextPageButton extends StatelessWidget {
  const OnboardingNextPageButton({
    required this.controller,
    super.key,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      tooltip: AppTranslations.onboarding.nextPage,
      onPressed: () => controller.nextPage(
        curve: Curves.ease,
        duration: 500.milliseconds,
      ),
      child: const NextArrowIcon(
        color: AppColors.white,
      ),
    );
  }
}
