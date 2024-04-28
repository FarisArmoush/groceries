import 'package:groceries/data/data_sources/interfaces/recipes_data_source.dart';
import 'package:groceries/data/data_sources/mock/mock_recipes_data_source.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/domain/repositories/recipes_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: RecipesRepository)
class RecipesRepositoryImpl implements RecipesRepository {
  const RecipesRepositoryImpl(
    @Named.from(MockRecipesDataSource) this._dataSource,
  );

  final RecipesDataSource _dataSource;

  @override
  Future<List<RecipeModel>> fetchRecipes() => _dataSource.fetchRecipes();
  @override
  Future<void> createRecipe(RecipeModel? recipe) =>
      _dataSource.createRecipe(recipe);

  @override
  Future<void> deleteRecipe(RecipeModel? recipe) =>
      _dataSource.deleteRecipe(recipe);
}
