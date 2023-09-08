part of '../onboarding.dart';

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
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  onboardingPageModel.title,
                  style: TextStyle(
                    fontFamily: AppFonts.semiBold(context),
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
                    fontFamily: AppFonts.regular(context),
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
