import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/use_cases/update_list_image_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';

part 'update_list_image_bloc.freezed.dart';
part 'update_list_image_event.dart';
part 'update_list_image_state.dart';

class UpdateListImageBloc
    extends Bloc<UpdateListImageEvent, UpdateListImageState> {
  UpdateListImageBloc(this._updateListImageUseCase)
      : super(const UpdateListImageState()) {
    on<UpdateListImageEvent>(
      (event, emit) => event.map(
        update: (event) => _onUpdate(event, emit),
      ),
    );
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
