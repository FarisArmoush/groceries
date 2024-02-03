import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/domain/repositories/my_tasks_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchMyTasksUseCase extends FutureOutputUseCase<List<TaskModel>?> {
  FetchMyTasksUseCase(this._repository);

  final MyTasksRepository _repository;
  @override
  Future<List<TaskModel>?> call() {
    return _repository.fetchMyTasks();
  }
}
