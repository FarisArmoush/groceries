part of '../onboarding.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit()
      : super(
          OnboardingState(
            index: 0,
            pageController: PageController(),
          ),
        );

  void setIndex(int value) {
    emit(
      OnboardingState(
        index: value,
        pageController: state.pageController,
      ),
    );
  }

  Future<void> markOnboardingAsViewed() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('hasViewedOnboarding', true);
  }
}
