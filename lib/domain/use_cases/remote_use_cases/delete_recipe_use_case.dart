import 'package:groceries/domain/repositories/recipe_details_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteRecipeUseCase extends FutureInputUseCase<String?> {
  DeleteRecipeUseCase(this._repository);

  final RecipeDetailsRepository _repository;
  @override
  Future<void> call(String? input) => _repository.deleteRecipe(input);
}
