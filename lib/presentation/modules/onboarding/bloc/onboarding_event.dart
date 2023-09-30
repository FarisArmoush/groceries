part of 'onboarding_bloc.dart';

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent.updateIndex(int index) = _UpdateIndex;

  const factory OnboardingEvent.markOnboardingAsViewed() =
      _MarkOnboardingAsViewed;
}
