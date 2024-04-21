import 'package:groceries/data/models/recipe_details_model/recipe_details_model.dart';
import 'package:groceries/domain/repositories/recipe_details_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchRecipeDetailsUseCase {
  const FetchRecipeDetailsUseCase(this._repository);

  final RecipeDetailsRepository _repository;

  Future<RecipeDetailsModel?> call(String? input) {
    return _repository.fetchDetails(input);
  }
}
