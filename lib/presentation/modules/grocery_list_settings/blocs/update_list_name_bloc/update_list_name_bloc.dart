import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/update_list_name_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'update_list_name_bloc.freezed.dart';
part 'update_list_name_event.dart';
part 'update_list_name_state.dart';

class UpdateListNameBloc
    extends Bloc<UpdateListNameEvent, UpdateListNameState> {
  UpdateListNameBloc(this._updateListNameUseCase)
      : super(const UpdateListNameState()) {
    on<UpdateListNameEvent>(
      (event, emit) => event.map(
        update: (event) => _onUpdate(event, emit),
      ),
    );
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
