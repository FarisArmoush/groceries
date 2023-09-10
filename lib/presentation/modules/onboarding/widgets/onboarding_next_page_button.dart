part of '../onboarding.dart';

class OnboardingNextPageButton extends StatelessWidget {
  const OnboardingNextPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    final onboardingPageController =
        context.watch<OnboardingCubit>().state.pageController;
    return FloatingActionButton.small(
      tooltip: AppTranslations.onboarding.nextPage,
      onPressed: () => onboardingPageController.nextPage(
        curve: Curves.ease,
        duration: 500.milliseconds,
      ),
      child: const NextArrowIcon(
        color: AppColors.white,
      ),
    );
  }
}
