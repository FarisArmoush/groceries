import 'package:groceries/data/models/recipe_model/recipe_model.dart';

abstract interface class RecipesDataSource {
  Future<List<RecipeModel>> fetchRecipes();
  Future<void> createRecipe(RecipeModel? recipe);
  Future<void> deleteRecipe(RecipeModel? recipe);
}
