import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/domain/repositories/recipes_repository.dart';

class RecipesUseCase {
  const RecipesUseCase(this._recipesRepository);

  final RecipesRepository _recipesRepository;

  Future<List<RecipeModel>> fetchRecipes() => _recipesRepository.fetchRecipes();
}