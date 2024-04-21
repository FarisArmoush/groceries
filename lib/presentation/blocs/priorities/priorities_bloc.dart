import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/domain/use_cases/fetch_priorities_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/utils/exceptions/app_network_exception.dart';
import 'package:injectable/injectable.dart';

part 'priorities_bloc.freezed.dart';
part 'priorities_event.dart';
part 'priorities_state.dart';

@injectable
class PrioritiesBloc extends Bloc<PrioritiesEvent, PrioritiesState> {
  PrioritiesBloc(this._fetchPrioritiesUseCase)
      : super(const PrioritiesState()) {
    on<PrioritiesEvent>(
      (event, emit) => event.map(
        getPriorities: (event) => _onGetPriorities(event, emit),
      ),
    );
  }

  final FetchPrioritiesUseCase _fetchPrioritiesUseCase;

  Future<void> _onGetPriorities(
    _GetPriorities event,
    Emitter<PrioritiesState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      final priorities = await _fetchPrioritiesUseCase();

      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          priorities: priorities,
        ),
      );
    } on AppNetworkException catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            e.message ?? AppTranslations.errorMessages.defaultError,
          ),
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            AppTranslations.errorMessages.defaultError,
          ),
        ),
      );
    }
  }
}
