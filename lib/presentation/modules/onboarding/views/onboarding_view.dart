part of '../onboarding.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final pageController = PageController();

  int currentPage = 0;

  final List<OnboardingPageModel> pages = [
    OnboardingPageModel(
      illustrationPath: Assets.svg.illCelebrating.path,
      title: AppTranslations.onboarding.onboardingFirstTitle,
      body: AppTranslations.onboarding.onboardingFirstBody,
      backgroundColor: Colors.amber,
    ),
    OnboardingPageModel(
      illustrationPath: Assets.svg.illMail.path,
      title: AppTranslations.onboarding.onboardingSecondTitle,
      body: AppTranslations.onboarding.onboardingSecondBody,
      backgroundColor: Colors.purple,
    ),
    OnboardingPageModel(
      illustrationPath: Assets.svg.illEating.path,
      title: AppTranslations.onboarding.onboardingThirdTitle,
      body: AppTranslations.onboarding.onboardingThirdBody,
      backgroundColor: Colors.blue,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        onPageChanged: (value) => setState(() => currentPage = value),
        children: List.generate(
          pages.length,
          (index) => OnboardingPageBase(
            onboardingPageModel: pages[index],
          ),
        ),
      ),
      floatingActionButton: currentPage == pages.length - 1
          ? const LeaveOnboardingButton()
          : OnboardingNextPageButton(controller: pageController),
    );
  }
}

final class OnboardingPageModel {
  const OnboardingPageModel({
    required this.illustrationPath,
    required this.title,
    required this.body,
    required this.backgroundColor,
  });

  final String illustrationPath;
  final String title;
  final String body;
  final Color backgroundColor;
}
