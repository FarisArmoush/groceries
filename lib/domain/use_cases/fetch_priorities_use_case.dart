import 'package:groceries/domain/entities/priority/priority_entity.dart';
import 'package:groceries/domain/repositories/priorities_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchPrioritiesUseCase {
  const FetchPrioritiesUseCase(this._prioritiesRepository);

  final PrioritiesRepository _prioritiesRepository;

  Future<List<PriorityEntity>> call() async {
    final modelPriorities = await _prioritiesRepository.fetchPriorities();
    final entityPriorities = modelPriorities.map((e) => e.toEntity()!).toList();
    final sortedPriorities = entityPriorities
      ..sort((a, b) => a.index?.compareTo(b.index ?? 0) ?? 1);
    return sortedPriorities;
  }
}
