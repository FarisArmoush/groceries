part of '../repositories.dart';

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
