import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'update_list_name_event.dart';
part 'update_list_name_state.dart';
part 'update_list_name_bloc.freezed.dart';

class UpdateListNameBloc
    extends Bloc<UpdateListNameEvent, UpdateListNameState> {
  UpdateListNameBloc(this._updateListNameUseCase)
      : super(const UpdateListNameState()) {
    on<_Update>(_onUpdate);
  }
  final UpdateListNameUseCase _updateListNameUseCase;

  Future<void> _onUpdate(
    _Update event,
    Emitter<UpdateListNameState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      await _updateListNameUseCase(event.name);
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
