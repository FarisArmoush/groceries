part of 'my_tasks_bloc.dart';

abstract class MyTasksEvent extends Equatable {
  const MyTasksEvent();

  @override
  List<Object> get props => [];
}

class LoadMyTasks extends MyTasksEvent {}

class FailedToLoadMyTasks extends MyTasksEvent {}
