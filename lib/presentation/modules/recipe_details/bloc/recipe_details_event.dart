part of '../recipe_details.dart';

sealed class RecipeDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

final class DeleteRecipe extends RecipeDetailsEvent {}
