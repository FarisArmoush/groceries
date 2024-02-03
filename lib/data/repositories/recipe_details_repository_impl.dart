import 'package:groceries/data/data_sources/recipe_details_data_source.dart';
import 'package:groceries/data/models/recipe_details_model/recipe_details_model.dart';
import 'package:groceries/domain/repositories/recipe_details_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: RecipeDetailsRepository)
class RecipeDetailsRepositoryImpl extends RecipeDetailsRepository {
  RecipeDetailsRepositoryImpl(this._recipeDetailsDataSource);

  final RecipeDetailsDataSource _recipeDetailsDataSource;
  @override
  Future<void> deleteRecipe(String? uid) {
    return _recipeDetailsDataSource.deleteRecipe(uid);
  }

  @override
  Future<RecipeDetailsModel?> fetchDetails(String? uid) {
    return _recipeDetailsDataSource.fetchDetails(uid);
  }
}
