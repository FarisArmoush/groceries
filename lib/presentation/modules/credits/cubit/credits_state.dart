part of 'credits_cubit.dart';

@freezed
class CreditsState with _$CreditsState {
  const factory CreditsState({
    required List<CreditModel> uiPackages,
    required List<CreditModel> backendPackages,
    required List<CreditModel> devPackages,
    required List<CreditModel> miscPackages,
    required List<CreditModel> stateManagementPackages,
  }) = _CreditsState;
  const CreditsState._();
}
