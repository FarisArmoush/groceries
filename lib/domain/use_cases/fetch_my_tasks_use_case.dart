import 'package:groceries/domain/entities/task/task_entity.dart';
import 'package:groceries/domain/repositories/my_tasks_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchMyTasksUseCase {
  const FetchMyTasksUseCase(this._repository);

  final MyTasksRepository _repository;

  Future<List<TaskEntity>?> call() async {
    final modelList = await _repository.fetchMyTasks();
    final entityList = modelList?.map((e) => e.toEntity()).toList();
    return entityList;
  }
}
