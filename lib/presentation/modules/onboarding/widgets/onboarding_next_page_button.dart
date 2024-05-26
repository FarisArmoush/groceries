import 'package:flutter/material.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';
import 'package:groceries_theme/app_theme.dart';

class OnboardingNextPageButton extends StatelessWidget {
  const OnboardingNextPageButton({required this.pageController, super.key});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.small(
      tooltip: Translations.onboarding.nextPage,
      onPressed: () => pageController.nextPage(
        curve: Curves.ease,
        duration:const Duration(milliseconds: 500),
      ),
      child: const NextArrowIcon(
        color: AppColors.white,
      ),
    );
  }
}
