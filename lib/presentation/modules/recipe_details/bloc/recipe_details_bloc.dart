part of '../recipe_details.dart';

class RecipeDetailsBloc extends Bloc<RecipeDetailsEvent, RecipeDetailsState> {
  RecipeDetailsBloc() : super(RecipeDetailsStateInitial()) {
    on<DeleteRecipe>(_onDeleteRecipe);
  }
  Future<void> _onDeleteRecipe(
    DeleteRecipe event,
    Emitter<RecipeDetailsState> emit,
  ) async {}
}
