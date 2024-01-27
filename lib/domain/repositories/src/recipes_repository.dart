part of '../repositories.dart';

abstract class RecipesRepository {
  Future<List<RecipeModel>> fetchRecipes();

  Future<void> createRecipe(RecipeModel? recipe);

  Future<void> deleteRecipe(RecipeModel? recipe);
}
