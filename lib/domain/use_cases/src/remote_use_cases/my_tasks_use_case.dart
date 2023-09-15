part of '../../use_cases.dart';

class MyTasksUseCase {
  const MyTasksUseCase(this._myTasksRepository);

  final MyTasksRepository _myTasksRepository;

  Future<List<TaskModel>> fetchMyTasks() => _myTasksRepository.fetchMyTasks();
}
