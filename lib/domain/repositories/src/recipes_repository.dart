part of '../repositories.dart';

abstract class RecipesRepository {
  Future<List<RecipeModel>> fetchRecipes();

  Future<RecipeModel> createRecipe(RecipeModel recipe);

  Future<RecipeModel> deleteRecipe(RecipeModel recipe);
}
