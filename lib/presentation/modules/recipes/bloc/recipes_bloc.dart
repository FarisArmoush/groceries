part of '../recipes.dart';

class RecipesBloc extends Bloc<RecipesEvent, RecipesState> {
  RecipesBloc(this._recipesUseCase) : super(RecipesInitial()) {
    on<LoadRecipes>(
      (event, emit) async {
        final recipes = await _recipesUseCase.fetchRecipes();
        await Future.delayed(
          500.milliseconds,
          () => emit(RecipesLoaded(recipes: recipes)),
        );
      },
    );
  }
  final RecipesUseCase _recipesUseCase;
}
