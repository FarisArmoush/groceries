import 'package:groceries/domain/entities/category/category_entity.dart';
import 'package:groceries/domain/repositories/cateogries_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchCategoriesUseCase {
  const FetchCategoriesUseCase(this._categoriesRepository);

  final CategoriesRepository _categoriesRepository;

  Future<List<CategoryEntity>> call([String? input]) async {
    final modelList = await _categoriesRepository.fetchCategories(input);
    final entityList = modelList.map((e) => e.toEntity()!).toList();
    return entityList;
  }
}
