import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/domain/repositories/cateogries_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';

class FetchSubCategoriesUseCase
    extends FutureUseCase<String?, List<CategoryModel>> {
  FetchSubCategoriesUseCase(this._categoriesRepository);

  final CategoriesRepository _categoriesRepository;

  @override
  Future<List<CategoryModel>> call(String? input) {
    return _categoriesRepository.fetchSubCategories(input);
  }
}
