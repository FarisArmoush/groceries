import 'package:groceries/data/data_sources/my_tasks_data_source.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/domain/repositories/my_tasks_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: MyTasksRepository)
class MyTasksRepositoryImpl extends MyTasksRepository {
  const MyTasksRepositoryImpl(this._myTasksDataSource);

  final MyTasksDataSource _myTasksDataSource;
  @override
  Future<List<TaskModel>> fetchMyTasks() => _myTasksDataSource.fetchMyTasks();

  @override
  Future<void> markTaskAsDone(TaskModel? task) =>
      _myTasksDataSource.markTaskAsDone(task);
}
