import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/delete_grocery_list_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'delete_list_bloc.freezed.dart';
part 'delete_list_event.dart';
part 'delete_list_state.dart';

class DeleteListBloc extends Bloc<DeleteListEvent, DeleteListState> {
  DeleteListBloc(this._deleteGroceryListUseCase)
      : super(const DeleteListState()) {
    on<DeleteListEvent>(
      (event, emit) => event.map(
        delete: (event) => _onDelete(event, emit),
      ),
    );
  }

  final DeleteGroceryListUseCase _deleteGroceryListUseCase;

  Future<void> _onDelete(
    _Delete event,
    Emitter<DeleteListState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      await _deleteGroceryListUseCase(event.listId);
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
        ),
      );
    } on FirebaseException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            e.message ?? AppTranslations.errorMessages.defaultError,
          ),
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
