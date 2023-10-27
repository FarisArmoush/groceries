part of '../../use_cases.dart';

class FetchParentCategoriesUseCase
    extends FutureOutputUseCase<List<CategoryModel>> {
  FetchParentCategoriesUseCase(
    this._categoriesRepository,
  );
  final CategoriesRepository _categoriesRepository;

  @override
  Future<List<CategoryModel>> call() {
    return _categoriesRepository.fetchParentCategories();
  }
}
