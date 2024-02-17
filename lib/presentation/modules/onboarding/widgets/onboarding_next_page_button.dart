import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';
import 'package:groceries_app_ui/app_theme.dart';

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
