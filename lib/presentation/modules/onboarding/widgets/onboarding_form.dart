part of '../onboarding.dart';

class OnboardingForm extends StatefulWidget {
  const OnboardingForm({super.key});

  @override
  State<OnboardingForm> createState() => _OnboardingFormState();
}

class _OnboardingFormState extends State<OnboardingForm> {
  final pageController = PageController();

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
    return BlocBuilder<OnboardingCubit, OnboardingState>(
      buildWhen: (previous, current) => previous.index != current.index,
      builder: (context, state) {
        final isLastPage = state.index == pages.length - 1;
        return Scaffold(
          body: PageView(
            controller: pageController,
            onPageChanged: (value) =>
                context.read<OnboardingCubit>().setIndex(value),
            children: List.generate(
              pages.length,
              (index) => OnboardingPageBase(
                onboardingPageModel: pages[index],
              ),
            ),
          ),
          floatingActionButton: isLastPage
              ? const LeaveOnboardingButton()
              : OnboardingNextPageButton(controller: pageController),
        );
      },
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
