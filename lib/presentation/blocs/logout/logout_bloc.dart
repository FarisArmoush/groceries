import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'logout_event.dart';
part 'logout_state.dart';
part 'logout_bloc.freezed.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc(this._logoutUseCase) : super(const LogoutState()) {
    on<_Logout>(_onLogout);
  }

  final LogoutUseCase _logoutUseCase;

  Future<void> _onLogout(
    _Logout event,
    Emitter<LogoutState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      await _logoutUseCase();
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
        ),
      );
    } on FirebaseAuthException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(e.message!),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(e.toString()),
        ),
      );
    }
  }
}
