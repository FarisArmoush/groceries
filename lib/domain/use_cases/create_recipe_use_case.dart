import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/domain/repositories/recipes_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateRecipeUseCase {
  const CreateRecipeUseCase(this._recipesRepository);

  final RecipesRepository _recipesRepository;

  Future<void> call(RecipeModel? input) {
    return _recipesRepository.createRecipe(input);
  }
}
