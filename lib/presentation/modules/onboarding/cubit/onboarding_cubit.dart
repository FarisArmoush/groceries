part of '../onboarding.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState(index: 0));

  void setIndex(int value) => emit(OnboardingState(index: value));

  Future<void> markOnboardingAsViewed() async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('hasViewedOnboarding', true);
  }
}
