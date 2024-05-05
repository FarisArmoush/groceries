import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/domain/repositories/priorities_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchPrioritiesUseCase {
  const FetchPrioritiesUseCase(this._prioritiesRepository);

  final PrioritiesRepository _prioritiesRepository;

  Future<List<PriorityModel>> call() async {
    final priorities = await _prioritiesRepository.fetchPriorities();
    final sortedPriorities = priorities
      ..sort((a, b) => a.index?.compareTo(b.index ?? 0) ?? 1);
    return sortedPriorities;
  }
}
