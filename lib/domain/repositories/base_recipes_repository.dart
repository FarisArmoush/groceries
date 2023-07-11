import 'package:groceries/data/models/recipe_model/recipe_model.dart';

abstract class BaseRecipesRepository {
  Future<List<RecipeModel>> getRecipes();

  List<RecipeModel> get recipes;
}
