import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/domain/repositories/constants_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchPrioritiesUseCase {
  const FetchPrioritiesUseCase(this._constantsRepository);

  final ConstantsRepository _constantsRepository;

  Future<List<PriorityModel>> call() => _constantsRepository.fetchPriorities();
}
