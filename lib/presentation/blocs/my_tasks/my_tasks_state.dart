part of 'my_tasks_bloc.dart';

@freezed
class MyTasksState with _$MyTasksState {
  const factory MyTasksState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(<TaskEntity>[]) List<TaskEntity>? myTasks,
  }) = _MyTasksState;

  const MyTasksState._();
}
