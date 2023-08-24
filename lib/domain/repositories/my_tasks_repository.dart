import 'package:groceries/data/models/task_model/task_model.dart';

abstract class MyTasksRepository {
  Future<List<TaskModel>> fetchMyTasks();

  Future<void> markTaskAsDone(TaskModel task);
}
