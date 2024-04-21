import 'package:groceries/data/models/category_model/category_model.dart';
import 'package:groceries/domain/repositories/cateogries_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchCategoriesUseCase {
  const FetchCategoriesUseCase(this._categoriesRepository);

  final CategoriesRepository _categoriesRepository;

  Future<List<CategoryModel>> call([String? input]) {
    return _categoriesRepository.fetchCategories(input);
  }
}
