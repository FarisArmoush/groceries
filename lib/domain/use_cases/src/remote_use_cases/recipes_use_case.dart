part of '../../use_cases.dart';

class RecipesUseCase {
  const RecipesUseCase(this._recipesRepository);

  final RecipesRepository _recipesRepository;

  Future<List<RecipeModel>> fetchRecipes() => _recipesRepository.fetchRecipes();
}
