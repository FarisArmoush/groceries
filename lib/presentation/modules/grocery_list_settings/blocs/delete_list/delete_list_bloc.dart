import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'delete_list_event.dart';
part 'delete_list_state.dart';
part 'delete_list_bloc.freezed.dart';

class DeleteListBloc extends Bloc<DeleteListEvent, DeleteListState> {
  DeleteListBloc(this._deleteGroceryListUseCase)
      : super(const DeleteListState()) {
    on<_Delete>(_onDelete);
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
          status: BlocStatus.failure(e.message ?? ''),
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
