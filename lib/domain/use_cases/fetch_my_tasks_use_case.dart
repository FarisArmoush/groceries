import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/domain/repositories/my_tasks_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchMyTasksUseCase {
  const FetchMyTasksUseCase(this._repository);

  final MyTasksRepository _repository;

  Future<List<TaskModel>?> call() {
    return _repository.fetchMyTasks();
  }
}
