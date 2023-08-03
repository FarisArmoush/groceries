part of '../onborading.dart';

class OnboardingNextPageButton extends StatelessWidget {
  const OnboardingNextPageButton({
    required this.controller,
    super.key,
  });

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return FadeInAnimation(
      child: FloatingActionButton.small(
        tooltip: AppTranslations.nextPage,
        onPressed: () => controller.nextPage(
          curve: Curves.easeInOut,
          duration: 1000.milliseconds,
        ),
        child: const NextArrowIcon(
          color: AppColors.white,
        ),
      ),
    );
  }
}
