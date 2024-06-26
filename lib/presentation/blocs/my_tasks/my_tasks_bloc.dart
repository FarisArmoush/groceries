import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/domain/entities/task/task_entity.dart';
import 'package:groceries/domain/use_cases/fetch_my_tasks_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:groceries/shared/exceptions/app_network_exception.dart';
import 'package:injectable/injectable.dart';

part 'my_tasks_bloc.freezed.dart';
part 'my_tasks_event.dart';
part 'my_tasks_state.dart';

@injectable
class MyTasksBloc extends Bloc<MyTasksEvent, MyTasksState> {
  MyTasksBloc(this._myTasksUseCase) : super(const MyTasksState()) {
    on<MyTasksEvent>(
      (event, emit) => event.map(
        getMyTasks: (event) => _onGetMyTasks(event, emit),
      ),
    );
  }
  final FetchMyTasksUseCase _myTasksUseCase;

  Future<void> _onGetMyTasks(
    _GetMyTasks event,
    Emitter<MyTasksState> emit,
  ) async {
    try {
      final myTasks = await _myTasksUseCase();
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          myTasks: myTasks,
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
    } catch (_) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(
            Translations.errors.defaultError,
          ),
        ),
      );
    }
  }
}
