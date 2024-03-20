import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/fetch_my_tasks_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
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
    } catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure('$e'),
        ),
      );
    }
  }
}
