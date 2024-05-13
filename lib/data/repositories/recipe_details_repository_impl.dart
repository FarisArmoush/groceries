import 'package:groceries/data/data_sources/interfaces/recipe_details_data_source.dart';
import 'package:groceries/data/data_sources/mock/mock_recipe_details_data_source.dart';
import 'package:groceries/data/models/recipe_details/recipe_details_model.dart';
import 'package:groceries/domain/repositories/recipe_details_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: RecipeDetailsRepository)
class RecipeDetailsRepositoryImpl implements RecipeDetailsRepository {
  const RecipeDetailsRepositoryImpl(
    @Named.from(MockRecipeDetailsDataSource) this._dataSource,
  );

  final RecipeDetailsDataSource _dataSource;
  @override
  Future<void> deleteRecipe(String? uid) {
    return _dataSource.deleteRecipe(uid);
  }

  @override
  Future<RecipeDetailsModel?> fetchDetails(String? uid) {
    return _dataSource.fetchDetails(uid);
  }
}
