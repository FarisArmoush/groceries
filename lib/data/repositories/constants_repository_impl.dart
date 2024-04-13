import 'package:groceries/data/data_sources/constants_data_source.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/domain/repositories/constants_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ConstantsRepository)
class ConstantsRepositoryImpl extends ConstantsRepository {
  ConstantsRepositoryImpl(this._constatntsDataSource);

  final ConstatntsDataSource _constatntsDataSource;
  @override
  Future<List<PriorityModel>> fetchPriorities() {
    return _constatntsDataSource.fetchPriorities();
  }
}
