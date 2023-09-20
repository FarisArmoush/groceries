part of '../../use_cases.dart';

class FetchCategoriesUseCase {
  FetchCategoriesUseCase(this._categoriesRepository);

  final CategoriesRepository _categoriesRepository;

  Future<List<CategoryModel>> fetchCategories() async =>
      _categoriesRepository.fetchAllCategories();
}
