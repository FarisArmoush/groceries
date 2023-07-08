part of 'recipes_bloc.dart';

sealed class RecipesEvent extends Equatable {
  const RecipesEvent();

  @override
  List<Object> get props => [];
}

final class LoadRecipes extends RecipesEvent {}

final class DeleteRecipe extends RecipesEvent {}

final class ArchiveRecipe extends RecipesEvent {}

final class AddRecipeToList extends RecipesEvent {}
