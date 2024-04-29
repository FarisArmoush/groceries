import 'package:groceries/data/cache_service.dart';
import 'package:groceries/data/data_sources/interfaces/categories_data_source.dart';
import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/utils/keys/storage_keys.dart';
import 'package:groceries/utils/typedefs/typedefs.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: CategoriesDataSource)
class LocalCategoriesDataSource implements CategoriesDataSource {
  const LocalCategoriesDataSource(this._cacheService);

  final CacheService _cacheService;
  @override
  Future<List<CategoryModel>> fetchCategories([String? categoryId]) async {
    final rawCategories = await _cacheService.read<List<JSON>>(
      categoryId ?? StorageKeys.parentCategories,
    );
    final categories = rawCategories?.map(CategoryModel.fromJson) ?? [];
    return categories.toList();
  }
}
