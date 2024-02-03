import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/domain/repositories/my_tasks_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class MyTasksUseCase {
  const MyTasksUseCase(this._myTasksRepository);

  final MyTasksRepository _myTasksRepository;

  Future<List<TaskModel>> fetchMyTasks() => _myTasksRepository.fetchMyTasks();
}
