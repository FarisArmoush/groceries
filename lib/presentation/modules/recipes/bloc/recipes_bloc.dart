import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/data/repositories/mock_repositories/mock_recipes_repository.dart';
import 'package:groceries/domain/repositories/recipes_repository.dart';

part 'recipes_event.dart';
part 'recipes_state.dart';

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
