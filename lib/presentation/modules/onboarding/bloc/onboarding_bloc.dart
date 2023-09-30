import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';
part 'onboarding_bloc.freezed.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingState()) {
    on<_UpdateIndex>(_onUpdateIndex);
    on<_MarkOnboardingAsViewed>(_onMarkOnboardingAsViewed);
  }

  void _onUpdateIndex(
    _UpdateIndex event,
    Emitter<OnboardingState> emit,
  ) {
    emit(state.copyWith(index: event.index));
  }

  Future<void> _onMarkOnboardingAsViewed(
    _MarkOnboardingAsViewed event,
    Emitter<OnboardingState> emit,
  ) async {
    final sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('hasViewedOnboarding', true);
  }
}
