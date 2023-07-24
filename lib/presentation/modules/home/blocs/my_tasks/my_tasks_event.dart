part of 'my_tasks_bloc.dart';

sealed class MyTasksEvent extends Equatable {
  const MyTasksEvent();

  @override
  List<Object> get props => [];
}

final class LoadMyTasks extends MyTasksEvent {}

final class FailedToLoadMyTasks extends MyTasksEvent {}
