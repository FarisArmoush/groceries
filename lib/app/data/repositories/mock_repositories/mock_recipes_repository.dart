import 'package:faker/faker.dart';
import 'package:groceries/app/data/models/recipe_model.dart';
import 'package:groceries/app/domain/repositories/base_recipes_repository.dart';

class MockRecipesRepository extends BaseRecipesRepository {
  @override
  Future<List<RecipeModel>> getRecipes() async {
    return recipes;
  }

  @override
  List<RecipeModel> get recipes {
    return [
      RecipeModel(
        id: '123',
        name: faker.food.dish(),
        imageUrl: faker.image.image(),
        items: const [
          'Pasta',
          'Olive Oil',
          'Eggs',
          'Parmesan Cheese',
        ],
      ),
      RecipeModel(
        id: '234',
        name: faker.food.dish(),
        imageUrl: faker.image.image(),
        items: const [
          'Warm milk',
          'Flour',
          'Eggs',
          'Cheddar',
        ],
      ),
      RecipeModel(
        id: '345',
        name: faker.food.dish(),
        imageUrl: faker.image.image(),
        items: const [
          'Rice',
          'Chicken',
          'Potatoes',
          'Carrots',
        ],
      ),
      RecipeModel(
        id: '456',
        name: faker.food.dish(),
        imageUrl: faker.image.image(),
        items: const [],
      ),
    ];
  }
}
