import 'package:groceries/app/data/models/task_model.dart';

abstract class BaseTasksRepository {
  Future<List<TaskModel>> getMyTasks();

  List<TaskModel> get myTasks;
}
