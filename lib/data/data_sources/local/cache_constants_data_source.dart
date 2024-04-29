import 'package:groceries/data/data_sources/interfaces/constants_data_source.dart';
import 'package:groceries/data/models/priority_model/priority_model.dart';
import 'package:groceries/data/services/cache/cache_service.dart';
import 'package:groceries/data/services/cache/hive_cache_service.dart';
import 'package:groceries/utils/keys/storage_keys.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: ConstantsDataSource)
class LocalConstantsDataSource implements ConstantsDataSource {
  const LocalConstantsDataSource(
    @Named.from(HiveCacheService) this._cacheService,
  );

  final CacheService _cacheService;

  @override
  Future<List<PriorityModel>> fetchPriorities() async {
    final value = await _cacheService.read<List<JSON>>(StorageKeys.priorities);
    if (value case != null && != const []) {
      final cachedValue = value.map(PriorityModel.fromJson).toList();
      return cachedValue;
    }
    return <PriorityModel>[];
  }
}
