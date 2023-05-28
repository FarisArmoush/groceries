part of 'create_recipe_bloc.dart';

abstract class CreateRecipeState extends Equatable {
  const CreateRecipeState();
  
  @override
  List<Object> get props => [];
}

class CreateRecipeInitial extends CreateRecipeState {}
