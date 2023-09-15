part of '../repositories.dart';

class RecipesRepositoryImpl extends RecipesRepository {
  RecipesRepositoryImpl(this._recipesDataSource);

  final RecipesDataSource _recipesDataSource;
  @override
  Future<List<RecipeModel>> fetchRecipes() => _recipesDataSource.fetchRecipes();
  @override
  Future<RecipeModel> createRecipe(RecipeModel recipe) =>
      _recipesDataSource.createRecipe(recipe);

  @override
  Future<RecipeModel> deleteRecipe(RecipeModel recipe) =>
      _recipesDataSource.deleteRecipe(recipe);
}
