part of '../onboarding.dart';

class OnboardingNextPageButton extends StatelessWidget {
  const OnboardingNextPageButton({required this.pageController, super.key});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      tooltip: AppTranslations.onboarding.nextPage,
      onPressed: () => pageController.nextPage(
        curve: Curves.ease,
        duration: 500.milliseconds,
      ),
      child: const NextArrowIcon(
        color: AppColors.white,
      ),
    );
  }
}
