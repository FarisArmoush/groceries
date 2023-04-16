import 'package:groceries/app/data/models/recipe_model.dart';

abstract class BaseRecipesRepository {
  Future<List<RecipeModel>> getRecipes();

  List<RecipeModel> get recipes;
}
