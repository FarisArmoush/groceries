part of '../credits.dart';

class CreditsCubit extends Cubit<CreditsState> {
  CreditsCubit() : super(CreditsInitial());

  final creditsUseCase = FetchCreditsUseCase();

  List<CreditModel> get uiPackages => creditsUseCase.uiPackages;
  List<CreditModel> get backendPackages => creditsUseCase.backendPackages;
  List<CreditModel> get devPackages => creditsUseCase.devPackages;
  List<CreditModel> get miscPackages => creditsUseCase.miscPackages;
  List<CreditModel> get stateManagementPackages =>
      creditsUseCase.stateManagementPackages;
}
