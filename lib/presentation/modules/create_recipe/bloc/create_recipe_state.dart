part of '../create_recipe.dart';

sealed class CreateRecipeState extends Equatable {
  const CreateRecipeState();

  @override
  List<Object> get props => [];
}

final class CreateRecipeInitial extends CreateRecipeState {}
