part of '../../use_cases.dart';

class FetchSubCategoriesUseCase
    extends FutureUseCase<String, List<CategoryModel>> {
  FetchSubCategoriesUseCase(this._categoriesRepository);

  final CategoriesRepository _categoriesRepository;

  @override
  Future<List<CategoryModel>> call(String input) {
    return _categoriesRepository.fetchSubCategories(input);
  }
}
