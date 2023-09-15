part of '../onboarding.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit()
      : super(
          OnboardingState(
            index: 0,
            pageController: PageController(),
          ),
        );

  void updateIndex(int index) {
    emit(
      OnboardingState(
        index: index,
        pageController: state.pageController,
      ),
    );
  }

  Future<void> markOnboardingAsViewed() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('hasViewedOnboarding', true);
  }
}
