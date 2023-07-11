import 'package:groceries/data/models/task_model/task_model.dart';

abstract class BaseTasksRepository {
  Future<List<TaskModel>> getMyTasks();

  List<TaskModel> get myTasks;
}
