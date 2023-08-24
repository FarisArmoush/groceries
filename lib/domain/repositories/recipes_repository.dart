import 'package:groceries/data/models/recipe_model/recipe_model.dart';

abstract class RecipesRepository {
  Future<List<RecipeModel>> fetchRecipes();

  Future<RecipeModel> createRecipe(RecipeModel recipe);

  Future<RecipeModel> deleteRecipe(RecipeModel recipe);
}
