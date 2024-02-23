import 'package:groceries/data/models/recipe_details_model/recipe_details_model.dart';

abstract class RecipeDetailsRepository {
  const RecipeDetailsRepository();
  Future<RecipeDetailsModel?> fetchDetails(String? uid);
  Future<void> deleteRecipe(String? uid);
}
