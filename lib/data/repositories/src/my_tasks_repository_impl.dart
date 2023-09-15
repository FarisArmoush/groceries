part of '../repositories.dart';

class MyTasksRepositoryImpl extends MyTasksRepository {
  MyTasksRepositoryImpl(this._myTasksDataSource);

  final MyTasksDataSource _myTasksDataSource;
  @override
  Future<List<TaskModel>> fetchMyTasks() => _myTasksDataSource.fetchMyTasks();

  @override
  Future<void> markTaskAsDone(TaskModel task) =>
      _myTasksDataSource.markTaskAsDone(task);
}
