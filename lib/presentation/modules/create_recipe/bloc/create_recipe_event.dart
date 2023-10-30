part of 'create_recipe_bloc.dart';

@freezed
class CreateRecipeEvent with _$CreateRecipeEvent {
  const factory CreateRecipeEvent.createRecipe({
    required RecipeModel recipeModel,
  }) = _CreateRecipe;
}
