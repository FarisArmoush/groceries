import 'package:groceries/data/data_sources/interfaces/my_tasks_data_source.dart';
import 'package:groceries/data/data_sources/mock/mock_my_tasks_data_source.dart';
import 'package:groceries/data/models/task/task_model.dart';
import 'package:groceries/domain/repositories/my_tasks_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: MyTasksRepository)
class MyTasksRepositoryImpl implements MyTasksRepository {
  const MyTasksRepositoryImpl(
    @Named.from(MockMyTasksDataSource) this._dataSource,
  );

  final MyTasksDataSource _dataSource;
  @override
  Future<List<TaskModel>> fetchMyTasks() => _dataSource.fetchMyTasks();

  @override
  Future<void> markTaskAsDone(TaskModel? task) =>
      _dataSource.markTaskAsDone(task);
}
