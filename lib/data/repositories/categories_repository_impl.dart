import 'package:groceries/data/data_sources/interfaces/categories_data_source.dart';
import 'package:groceries/data/data_sources/local/local_categories_data_source.dart';
import 'package:groceries/data/data_sources/remote/firestore_categories_data_source.dart';
import 'package:groceries/data/models/category/category_model.dart';
import 'package:groceries/data/services/cache/cache_service.dart';
import 'package:groceries/data/services/cache/hive_cache_service.dart';
import 'package:groceries/domain/repositories/cateogries_repository.dart';
import 'package:groceries/shared/logger.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CategoriesRepository)
class CategoriesRepositoryImpl implements CategoriesRepository {
  const CategoriesRepositoryImpl(
    @Named.from(FirestoreCategoriesDataSource) this._dataSource,
    @Named.from(LocalCategoriesDataSource) this._localDataSource,
    @Named.from(HiveCacheService) this._cacheService,
  );

  final CategoriesDataSource _dataSource;
  final CategoriesDataSource _localDataSource;
  final CacheService _cacheService;

  @override
  Future<List<CategoryModel>> fetchCategories([String? categoryId]) async {
    final cachedCategories = await _checkCachedCategories(categoryId);

    if (cachedCategories != null) {
      logger.info(
        'Cached categories ${categoryId ?? 'parentCategories'}',
      );
      return cachedCategories;
    }
    final remotePriorities = await _dataSource.fetchCategories(categoryId);
    final jsonedPriorities = remotePriorities
        .map((e) => e.toJson()..remove('creationDate'))
        .toList();

    await _cacheService.write<List<Map<String, dynamic>>>(
      categoryId ?? 'parentCategories',
      jsonedPriorities,
    );
    await _cacheService.write<String>(
      categoryId != null
          ? 'last-fetch-$categoryId'
          : 'last-fetch-parentCategories',
      DateTime.now().toString(),
    );
    logger.info(
      'Categories from Firestore ${categoryId ?? 'parentCategories'}',
    );
    return remotePriorities;
  }

  Future<List<CategoryModel>?> _checkCachedCategories(
    String? categoryId,
  ) async {
    final localPriorities = await _localDataSource.fetchCategories(categoryId);
    final lastFetchTimeValue = await _cacheService.read<String>(
      categoryId != null
          ? 'last-fetch-$categoryId'
          : 'last-fetch-parentCategories',
    );
    final lastFetchTime =
        DateTime.tryParse(lastFetchTimeValue ?? '') ?? DateTime.now();

    final hasBeenLessThanOneDay =
        DateTime.now().difference(lastFetchTime).inDays <= 1;

    if (localPriorities.isNotEmpty && hasBeenLessThanOneDay) {
      return localPriorities;
    }
    return null;
  }
}
