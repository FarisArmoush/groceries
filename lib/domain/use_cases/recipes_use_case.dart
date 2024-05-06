import 'package:groceries/domain/entities/recipe/recipe_entity.dart';
import 'package:groceries/domain/repositories/recipes_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class RecipesUseCase {
  const RecipesUseCase(this._recipesRepository);

  final RecipesRepository _recipesRepository;

  Future<List<RecipeEntity>> call() async {
    final modelList = await _recipesRepository.fetchRecipes();
    final entityList = modelList.map((e) => e.toEntity()!).toList();
    return entityList;
  }
}
