import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/credit_model/credit_model.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';

part 'credits_state.dart';
part 'credits_cubit.freezed.dart';

class CreditsCubit extends Cubit<CreditsState> {
  CreditsCubit(FetchCreditsUseCase creditsUseCase)
      : super(
          CreditsState(
            backendPackages: creditsUseCase.backendPackages,
            devPackages: creditsUseCase.devPackages,
            miscPackages: creditsUseCase.miscPackages,
            stateManagementPackages: creditsUseCase.stateManagementPackages,
            uiPackages: creditsUseCase.uiPackages,
          ),
        );
}
