part of '../../use_cases.dart';

class CreateRecipeUseCase extends FutureInputUseCase<RecipeModel?> {
  CreateRecipeUseCase(this._recipesRepository);

  final RecipesRepository _recipesRepository;

  @override
  Future<void> call(RecipeModel? input) {
    return _recipesRepository.createRecipe(input);
  }
}
