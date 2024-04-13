import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/domain/repositories/constants_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchPrioritiesUseCase extends FutureOutputUseCase<List<PriorityModel>> {
  const FetchPrioritiesUseCase(this._constantsRepository);

  final ConstantsRepository _constantsRepository;

  @override
  Future<List<PriorityModel>> call() => _constantsRepository.fetchPriorities();
}
