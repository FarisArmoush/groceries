import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/domain/use_cases/authentication_use_cases/delete_account_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:injectable/injectable.dart';

part 'delete_account_bloc.freezed.dart';
part 'delete_account_event.dart';
part 'delete_account_state.dart';

@injectable
class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  DeleteAccountBloc(this._deleteAccountUseCase)
      : super(const DeleteAccountState()) {
    on<DeleteAccountEvent>(
      (event, emit) => event.map(
        deleteAccount: (event) => _onDeleteAccount(event, emit),
      ),
    );
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
    try {
      await _deleteAccountUseCase();
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
        ),
      );
    } on FirebaseException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(e.message ?? ''),
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            AppTranslations.errorMessages.defaultErrorMessage,
          ),
        ),
      );
    }
  }
}
