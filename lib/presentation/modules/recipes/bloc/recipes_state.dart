part of '../recipes.dart';

abstract class RecipesState extends Equatable {
  const RecipesState();

  @override
  List<Object> get props => [];
}

class RecipesInitial extends RecipesState {}

class RecipesLoaded extends RecipesState {
  const RecipesLoaded({required this.recipes});

  final List<RecipeModel> recipes;

  @override
  List<Object> get props => [recipes];
}
