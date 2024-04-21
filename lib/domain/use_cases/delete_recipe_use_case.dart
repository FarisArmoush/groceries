import 'package:groceries/domain/repositories/recipe_details_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteRecipeUseCase {
  const DeleteRecipeUseCase(this._repository);

  final RecipeDetailsRepository _repository;

  Future<void> call(String? input) => _repository.deleteRecipe(input);
}
