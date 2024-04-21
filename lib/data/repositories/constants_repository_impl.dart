import 'package:groceries/data/data_sources/interfaces/constants_data_source.dart';
import 'package:groceries/data/data_sources/remote/firestore_constants_data_source.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/domain/repositories/constants_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: ConstantsRepository)
class ConstantsRepositoryImpl extends ConstantsRepository {
  ConstantsRepositoryImpl(
    @Named.from(FirestoreConstatntsDataSource) this._dataSource,
  );

  final ConstantsDataSource _dataSource;
  @override
  Future<List<PriorityModel>> fetchPriorities() {
    return _dataSource.fetchPriorities();
  }
}
