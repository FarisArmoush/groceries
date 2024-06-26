import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'onboarding_bloc.freezed.dart';
part 'onboarding_event.dart';
part 'onboarding_state.dart';

@injectable
class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingState()) {
    on<OnboardingEvent>(
      (event, emit) => event.map(
        updateIndex: (event) => _onUpdateIndex(event, emit),
        markOnboardingAsViewed: (event) =>
            _onMarkOnboardingAsViewed(event, emit),
      ),
    );
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
