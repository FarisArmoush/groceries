import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'delete_account_event.dart';
part 'delete_account_state.dart';
part 'delete_account_bloc.freezed.dart';

class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  DeleteAccountBloc(this._deleteAccountUseCase)
      : super(const DeleteAccountState()) {
    on<_DeleteAccount>(_onDeleteAccount);
  }
  final DeleteAccountUseCase _deleteAccountUseCase;

  Future<void> _onDeleteAccount(
    _DeleteAccount event,
    Emitter<DeleteAccountState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    // TODO(FarisArmoush): What the fuck is this?
    await _deleteAccountUseCase().catchError(
      (Object? e) => emit(
        state.copyWith(
          status: BlocStatus.failure('$e'),
        ),
      ),
    );
  }
}
