import 'package:groceries/data/data_sources/remote_data_sources/my_tasks_data_source.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/domain/repositories/my_tasks_repository.dart';

class MyTasksRepositoryImpl extends MyTasksRepository {
  MyTasksRepositoryImpl(this._myTasksDataSource);

  final MyTasksDataSource _myTasksDataSource;
  @override
  Future<List<TaskModel>> fetchMyTasks() => _myTasksDataSource.fetchMyTasks();

  @override
  Future<void> markTaskAsDone(TaskModel task) =>
      _myTasksDataSource.markTaskAsDone(task);
}
