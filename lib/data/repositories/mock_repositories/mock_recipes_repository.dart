import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/domain/repositories/base_recipes_repository.dart';

class MockRecipesRepository extends BaseRecipesRepository {
  @override
  Future<List<RecipeModel>> getRecipes() async {
    return recipes;
  }

  @override
  List<RecipeModel> get recipes {
    return [
      const RecipeModel(
        uid: '123',
        name: 'Vegetables Salad',
        imageUrl:
            'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg',
        items: [],
      ),
      const RecipeModel(
        uid: '234',
        name: 'American Breakfast',
        imageUrl:
            'https://www.eatingwell.com/thmb/m5xUzIOmhWSoXZnY-oZcO9SdArQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/article_291139_the-top-10-healthiest-foods-for-kids_-02-4b745e57928c4786a61b47d8ba920058.jpg',
        items: [],
      ),
      const RecipeModel(
        uid: '345',
        name: 'Beef Burger & Fries',
        imageUrl:
            'https://www.daysoftheyear.com/wp-content/uploads/national-fast-food-day.jpg',
        items: [],
      ),
    ];
  }
}
