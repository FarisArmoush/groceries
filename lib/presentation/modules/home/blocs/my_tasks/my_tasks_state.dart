part of '../../home.dart';

abstract class MyTasksState extends Equatable {
  const MyTasksState();

  @override
  List<Object> get props => [];
}

class MyTasksInitial extends MyTasksState {}

class MyTasksLoaded extends MyTasksState {
  const MyTasksLoaded({required this.myTasks});
  final List<TaskModel> myTasks;

  @override
  List<Object> get props => [myTasks];
}
