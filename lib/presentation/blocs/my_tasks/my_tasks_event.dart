part of 'my_tasks_bloc.dart';

@freezed
class MyTasksEvent with _$MyTasksEvent {
  const factory MyTasksEvent.getMyTasks() = _GetMyTasks;
}
