import 'package:groceries/data/models/recipe_details/recipe_details_model.dart';

abstract interface class RecipeDetailsRepository {
  const RecipeDetailsRepository();
  Future<RecipeDetailsModel?> fetchDetails(String? uid);
  Future<void> deleteRecipe(String? uid);
}
