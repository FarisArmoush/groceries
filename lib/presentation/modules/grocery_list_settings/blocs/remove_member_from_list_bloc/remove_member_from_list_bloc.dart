import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/remove_member_from_list_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'remove_member_from_list_bloc.freezed.dart';
part 'remove_member_from_list_event.dart';
part 'remove_member_from_list_state.dart';

class RemoveMemberFromListBloc
    extends Bloc<RemoveMemberFromListEvent, RemoveMemberFromListState> {
  RemoveMemberFromListBloc(this._removeMemberFromListUseCase)
      : super(const RemoveMemberFromListState()) {
    on<RemoveMemberFromListEvent>(
      (event, emit) => event.map(
        remove: (event) => _onRemove(event, emit),
      ),
    );
  }

  final RemoveMemberFromListUseCase _removeMemberFromListUseCase;
  Future<void> _onRemove(
    _Remove event,
    Emitter<RemoveMemberFromListState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      await _removeMemberFromListUseCase(event.memberUid);
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
