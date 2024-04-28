import 'package:groceries/data/models/task_model/task_model.dart';

abstract interface class MyTasksRepository {
  const MyTasksRepository();
  Future<List<TaskModel>?> fetchMyTasks();

  Future<void> markTaskAsDone(TaskModel? task);
}
