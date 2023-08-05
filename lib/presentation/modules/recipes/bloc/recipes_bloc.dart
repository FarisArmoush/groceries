part of '../recipes.dart';

class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  RecipesBloc() : super(RecipesInitial()) {
    final RecipesRepository recipesRepo = MockRecipesRepository();

    on<LoadRecipes>(
      (event, emit) async {
        await recipesRepo.fetchRecipes();
        emit(
          RecipesLoaded(recipes: recipesRepo.recipes),
        );
      },
    );
  }
}
