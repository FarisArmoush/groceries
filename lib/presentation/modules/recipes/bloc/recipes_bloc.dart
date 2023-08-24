part of '../recipes.dart';

class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  RecipesBloc(this._recipesUseCase) : super(RecipesInitial()) {
    on<LoadRecipes>(
      (event, emit) async {
        final recipes = await _recipesUseCase.fetchRecipes();
        emit(
          RecipesLoaded(recipes: recipes),
        );
      },
    );
  }
  final RecipesUseCase _recipesUseCase;
}
