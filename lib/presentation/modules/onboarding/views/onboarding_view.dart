part of '../onborading.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final controller = PageController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        onPageChanged: (value) => setState(() => currentPage = value),
        physics: const ClampingScrollPhysics(),
        children: [
          BaseOnboardingPage(
            illustrationPath: Assets.svg.illCelebrating.path,
            title: AppTranslations.onboardingFirstTitle,
            body: AppTranslations.onboardingFirstBody,
            backgroundColor: Colors.amber,
          ),
          BaseOnboardingPage(
            illustrationPath: Assets.svg.illMail.path,
            title: AppTranslations.onboardingSecondTitle,
            body: AppTranslations.onboardingSecondBody,
            backgroundColor: Colors.purple,
          ),
          BaseOnboardingPage(
            illustrationPath: Assets.svg.illEating.path,
            title: AppTranslations.onboardingThirdTitle,
            body: AppTranslations.onboardingThirdBody,
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      floatingActionButton: currentPage == 2
          ? const LeaveOnboardingButton()
          : OnboardingNextPageButton(controller: controller),
    );
  }
}
