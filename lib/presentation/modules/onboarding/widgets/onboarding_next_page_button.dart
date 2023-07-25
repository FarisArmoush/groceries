import 'package:flutter/material.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/widgets/animations/app_animations.dart';
import 'package:groceries/presentation/widgets/next_arrow_icon.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/extenstions/app_extensions.dart';

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
