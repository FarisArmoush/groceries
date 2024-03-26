import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/domain/repositories/cateogries_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchCategoriesUseCase
    extends FutureUseCase<String?, List<CategoryModel>> {
  const FetchCategoriesUseCase(this._categoriesRepository);

  final CategoriesRepository _categoriesRepository;

  @override
  Future<List<CategoryModel>> call([String? input]) {
    return _categoriesRepository.fetchCategories(input);
  }
}
