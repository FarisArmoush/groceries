import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/data_sources/interfaces/recipes_data_source.dart';
import 'package:groceries/data/models/recipe/recipe_model.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: RecipesDataSource)
class MockRecipesDataSource implements RecipesDataSource {
  const MockRecipesDataSource();

  // ignore: unused_element
  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  @override
  Future<List<RecipeModel>> fetchRecipes() async {
    final recipes = <RecipeModel>[
      RecipeModel(
        id: '123',
        name: 'Vegetables Salad',
        imageUrl:
            'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg',
        creationDate: DateTime.timestamp(),
      ),
      RecipeModel(
        id: '123',
        name: 'American Breakfast',
        imageUrl:
            'https://www.eatingwell.com/thmb/m5xUzIOmhWSoXZnY-oZcO9SdArQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/article_291139_the-top-10-healthiest-foods-for-kids_-02-4b745e57928c4786a61b47d8ba920058.jpg',
        creationDate: DateTime.timestamp(),
      ),
      RecipeModel(
        id: '123',
        name: 'Beef Burger & Fries',
        imageUrl:
            'https://www.daysoftheyear.com/wp-content/uploads/national-fast-food-day.jpg',
        creationDate: DateTime.timestamp(),
      ),
    ]..sort((a, b) => a.name?.compareTo(b.name ?? '') ?? 0);
    return recipes;
  }

  @override
  Future<void> createRecipe(RecipeModel? recipe) {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteRecipe(RecipeModel? recipe) {
    throw UnimplementedError();
  }
}
