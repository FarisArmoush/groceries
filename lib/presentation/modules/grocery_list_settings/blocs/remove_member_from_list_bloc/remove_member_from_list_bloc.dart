import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/models.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'remove_member_from_list_event.dart';
part 'remove_member_from_list_state.dart';
part 'remove_member_from_list_bloc.freezed.dart';

class RemoveMemberFromListBloc
    extends Bloc<RemoveMemberFromListEvent, RemoveMemberFromListState> {
  RemoveMemberFromListBloc(this._removeMemberFromListUseCase)
      : super(const RemoveMemberFromListState()) {
    on<_Remove>(_onRemove);
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
      await _removeMemberFromListUseCase(event.userModel!);
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
        ),
      );
    } on FirebaseException catch (e) {
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
