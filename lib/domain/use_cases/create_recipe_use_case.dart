import 'package:groceries/domain/entities/recipe/recipe_entity.dart';
import 'package:groceries/domain/repositories/recipes_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateRecipeUseCase {
  const CreateRecipeUseCase(this._recipesRepository);

  final RecipesRepository _recipesRepository;

  Future<void> call(RecipeEntity input) {
    return _recipesRepository.createRecipe(input.toModel());
  }
}
