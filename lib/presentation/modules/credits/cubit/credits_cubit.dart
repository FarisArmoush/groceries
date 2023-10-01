import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/credit_model/credit_model.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';

part 'credits_state.dart';
part 'credits_cubit.freezed.dart';

class CreditsCubit extends Cubit<CreditsState> {
  CreditsCubit(this._creditsUseCase)
      : super(
          CreditsState(
            backendPackages: _creditsUseCase.backendPackages,
            devPackages: _creditsUseCase.devPackages,
            miscPackages: _creditsUseCase.miscPackages,
            stateManagementPackages: _creditsUseCase.stateManagementPackages,
            uiPackages: _creditsUseCase.uiPackages,
          ),
        );
  // ignore: unused_field
  final FetchCreditsUseCase _creditsUseCase;
}
