part of 'recipes_bloc.dart';

abstract class RecipesEvent extends Equatable {
  const RecipesEvent();

  @override
  List<Object> get props => [];
}

class LoadRecipes extends RecipesEvent {}

class DeleteRecipe extends RecipesEvent {}

class ArchiveRecipe extends RecipesEvent {}

class AddRecipeToList extends RecipesEvent {}
