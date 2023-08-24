part of '../credits.dart';

class CreditsCubit extends Cubit<CreditsState> {
  CreditsCubit(this._creditsUseCase) : super(CreditsInitial());

  final FetchCreditsUseCase _creditsUseCase;

  List<CreditModel> get uiPackages => _creditsUseCase.uiPackages;
  List<CreditModel> get backendPackages => _creditsUseCase.backendPackages;
  List<CreditModel> get devPackages => _creditsUseCase.devPackages;
  List<CreditModel> get miscPackages => _creditsUseCase.miscPackages;
  List<CreditModel> get stateManagementPackages =>
      _creditsUseCase.stateManagementPackages;
}
