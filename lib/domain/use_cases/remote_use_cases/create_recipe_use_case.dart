import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/domain/repositories/recipes_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateRecipeUseCase extends FutureInputUseCase<RecipeModel?> {
  CreateRecipeUseCase(this._recipesRepository);

  final RecipesRepository _recipesRepository;

  @override
  Future<void> call(RecipeModel? input) {
    return _recipesRepository.createRecipe(input);
  }
}
