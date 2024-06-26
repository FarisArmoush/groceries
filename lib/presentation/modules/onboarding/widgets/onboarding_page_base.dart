import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:groceries/presentation/extensions/context_extensions.dart';
import 'package:groceries/presentation/extensions/padding_extensions.dart';
import 'package:groceries/presentation/models/onboarding_page_model/onboarding_page_model.dart';
import 'package:groceries_theme/app_theme.dart';

class OnboardingPageBase extends StatelessWidget {
  const OnboardingPageBase({
    required this.onboardingPageModel,
    super.key,
  });
  final OnboardingPageModel onboardingPageModel;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: onboardingPageModel.backgroundColor,
      child: Column(
        children: [
          const Spacer(),
          SvgPicture.asset(onboardingPageModel.illustrationPath)
              .symmetricPadding(
            horizontal: 16,
          ),
          const Spacer(),
          Container(
            width: double.infinity,
            color: context.theme.cardColor,
            padding: const EdgeInsetsDirectional.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  onboardingPageModel.title,
                  style: TextStyle(
                    fontWeight: AppFontWeights.semiBold,
                    color: context.theme.primaryColor,
                    fontSize: 26,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  onboardingPageModel.body,
                  style: TextStyle(
                    fontWeight: AppFontWeights.regular,
                    color: context.theme.hintColor,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: context.deviceHeight * 0.1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
