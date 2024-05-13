import 'package:groceries/data/models/recipe_details/recipe_details_model.dart';

abstract interface class RecipeDetailsDataSource {
  Future<RecipeDetailsModel?> fetchDetails(String? uid);
  Future<void> deleteRecipe(String? uid);
}
