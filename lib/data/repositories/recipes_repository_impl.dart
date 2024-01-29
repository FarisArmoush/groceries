import 'package:groceries/data/data_sources/recipes_data_source.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/domain/repositories/recipes_repository.dart';

class RecipesRepositoryImpl extends RecipesRepository {
  RecipesRepositoryImpl(this._recipesDataSource);

  final RecipesDataSource _recipesDataSource;

  @override
  Future<List<RecipeModel>> fetchRecipes() => _recipesDataSource.fetchRecipes();
  @override
  Future<void> createRecipe(RecipeModel? recipe) =>
      _recipesDataSource.createRecipe(recipe);

  @override
  Future<void> deleteRecipe(RecipeModel? recipe) =>
      _recipesDataSource.deleteRecipe(recipe);
}
