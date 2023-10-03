part of 'recipe_details_bloc.dart';

@freezed
class RecipeDetailsEvent with _$RecipeDetailsEvent {
  const factory RecipeDetailsEvent.deleteRecipe() = _DeleteRecipe;
}
