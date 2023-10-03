part of 'recipes_bloc.dart';

@freezed
class RecipesEvent with _$RecipesEvent {
  const factory RecipesEvent.loadMyRecipes() = _LoadMyRecipes;

  const factory RecipesEvent.deleteRecipe() = _DeleteRecipe;

  const factory RecipesEvent.addRecipeToList() = _AddRecipeToList;

  const factory RecipesEvent.archiveRecipe() = _ArchiveRecipe;
}
