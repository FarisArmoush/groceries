import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'my_tasks_bloc.freezed.dart';
part 'my_tasks_event.dart';
part 'my_tasks_state.dart';

class MyTasksBloc extends Bloc<MyTasksEvent, MyTasksState> {
  MyTasksBloc(this._myTasksUseCase) : super(const MyTasksState()) {
    on<_LoadMyTasks>(_onLoadMyTasks);
  }
  final MyTasksUseCase _myTasksUseCase;

  Future<void> _onLoadMyTasks(
    _LoadMyTasks event,
    Emitter<MyTasksState> emit,
  ) async {
    try {
      final myTasks = await _myTasksUseCase.fetchMyTasks();
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          myTasks: myTasks,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure('$e'),
        ),
      );
    }
  }
}
