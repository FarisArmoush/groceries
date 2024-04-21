import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/use_cases/update_list_name_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';

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
    } on AppNetworkException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            e.message ?? Translations.errors.defaultError,
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
