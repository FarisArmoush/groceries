import 'package:groceries/data/models/recipe_details_model/recipe_details_model.dart';
import 'package:groceries/domain/repositories/recipe_details_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchRecipeDetailsUseCase
    extends FutureUseCase<String?, RecipeDetailsModel?> {
  const FetchRecipeDetailsUseCase(this._repository);

  final RecipeDetailsRepository _repository;

  @override
  Future<RecipeDetailsModel?> call(String? input) {
    return _repository.fetchDetails(input);
  }
}
