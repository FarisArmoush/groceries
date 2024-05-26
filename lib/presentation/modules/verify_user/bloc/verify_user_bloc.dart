import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/verify_user_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/shared/exceptions/app_network_exception.dart';
import 'package:injectable/injectable.dart';

part 'verify_user_bloc.freezed.dart';
part 'verify_user_event.dart';
part 'verify_user_state.dart';

@injectable
class VerifyUserBloc extends Bloc<VerifyUserEvent, VerifyUserState> {
  VerifyUserBloc(this._verifyUserUseCase) : super(const VerifyUserState()) {
    on<VerifyUserEvent>(
      (event, emit) => event.map(
        submit: (event) => _onSubmit(event, emit),
      ),
    );
  }
  final VerifyUserUseCase _verifyUserUseCase;

  Future<void> _onSubmit(
    _Submit event,
    Emitter<VerifyUserState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      await _verifyUserUseCase();
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
        ),
      );
    } on AppNetworkException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            e.message ?? Translations.errors.defaultError,
          ),
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            Translations.errors.defaultError,
          ),
        ),
      );
    }
  }
}
