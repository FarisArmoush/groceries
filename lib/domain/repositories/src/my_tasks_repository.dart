part of '../repositories.dart';

abstract class MyTasksRepository {
  Future<List<TaskModel>> fetchMyTasks();

  Future<void> markTaskAsDone(TaskModel? task);
}
