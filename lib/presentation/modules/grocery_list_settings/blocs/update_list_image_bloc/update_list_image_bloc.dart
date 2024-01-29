import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/update_list_image_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'update_list_image_bloc.freezed.dart';
part 'update_list_image_event.dart';
part 'update_list_image_state.dart';

class UpdateListImageBloc
    extends Bloc<UpdateListImageEvent, UpdateListImageState> {
  UpdateListImageBloc(this._updateListImageUseCase)
      : super(const UpdateListImageState()) {
    on<_Update>(_onUpdate);
  }

  final UpdateListImageUseCase _updateListImageUseCase;
  Future<void> _onUpdate(
    _Update event,
    Emitter<UpdateListImageState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      await _updateListImageUseCase(event.image);
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
