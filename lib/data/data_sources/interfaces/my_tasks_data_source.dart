import 'package:groceries/data/models/task_model/task_model.dart';

abstract interface class MyTasksDataSource {
  Future<List<TaskModel>> fetchMyTasks();
  Future<void> markTaskAsDone(TaskModel? task);
}
