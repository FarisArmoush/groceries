import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';
import 'package:groceries/utils/constants/app_colors.dart';

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
          duration: const Duration(
            milliseconds: 1000,
          ),
        ),
        child: const NextArrowIcon(
          color: AppColors.white,
        ),
      ),
    );
  }
}
