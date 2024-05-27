import 'package:groceries/data/data_sources/interfaces/categories_data_source.dart';
import 'package:groceries/data/models/category/category_model.dart';
import 'package:groceries/data/services/cache/cache_service.dart';
import 'package:groceries/data/services/cache/hive_cache_service.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: CategoriesDataSource)
class LocalCategoriesDataSource implements CategoriesDataSource {
  const LocalCategoriesDataSource(
    @Named.from(HiveCacheService) this._cacheService,
  );

  final CacheService _cacheService;

  @override
  Future<List<CategoryModel>> fetchCategories([String? categoryId]) async {
    final rawCategories = await _cacheService.read<List<Map<String, dynamic>>>(
      categoryId ?? 'parentCategories',
    );
    final categories = rawCategories?.map(CategoryModel.fromJson) ?? [];
    return categories.toList();
  }
}
