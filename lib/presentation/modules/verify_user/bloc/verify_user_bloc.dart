import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'verify_user_bloc.freezed.dart';
part 'verify_user_event.dart';
part 'verify_user_state.dart';

class VerifyUserBloc extends Bloc<VerifyUserEvent, VerifyUserState> {
  VerifyUserBloc(this._verifyUserUseCase) : super(const VerifyUserState()) {
    on<_VerifyUser>(_onVerifyUser);
  }
  final VerifyUserUseCase _verifyUserUseCase;

  Future<void> _onVerifyUser(
    _VerifyUser event,
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
    } catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            e.toString(),
          ),
        ),
      );
    }
  }
}
