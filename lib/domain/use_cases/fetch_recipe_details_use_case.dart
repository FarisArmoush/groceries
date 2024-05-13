import 'package:groceries/domain/entities/recipe_details/recipe_details_entity.dart';
import 'package:groceries/domain/repositories/recipe_details_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchRecipeDetailsUseCase {
  const FetchRecipeDetailsUseCase(this._repository);

  final RecipeDetailsRepository _repository;

  Future<RecipeDetailsEntity?> call(String? input) async {
    final model = await _repository.fetchDetails(input);
    return model?.toEntity();
  }
}
