part of '../data_sources.dart';

class RecipesDataSource {
  const RecipesDataSource(this._firestore);

  // ignore: unused_field
  final FirebaseFirestore _firestore;

  Future<List<RecipeModel>> fetchRecipes() async {
    final recipes = <RecipeModel>[
      RecipeModel(
        id: '123',
        name: 'Vegetables Salad',
        imageUrl:
            'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg',
        creationDate: DateTime.timestamp(),
        items: [
          GroceryModel(
            categoryId: '1235',
            name: 'Chicken',
            id: '',
            isDone: false,
            refinements: <RefinementsModel>[],
            notes: '',
            image: '',
            creationDate: DateTime.timestamp(),
          ),
        ],
      ),
      RecipeModel(
        id: '123',
        name: 'American Breakfast',
        imageUrl:
            'https://www.eatingwell.com/thmb/m5xUzIOmhWSoXZnY-oZcO9SdArQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/article_291139_the-top-10-healthiest-foods-for-kids_-02-4b745e57928c4786a61b47d8ba920058.jpg',
        creationDate: DateTime.timestamp(),
        items: [
          GroceryModel(
            categoryId: '1235',
            name: 'Chicken',
            id: '',
            isDone: false,
            refinements: <RefinementsModel>[],
            notes: '',
            image: '',
            creationDate: DateTime.timestamp(),
          ),
        ],
      ),
      RecipeModel(
        id: '123',
        name: 'Beef Burger & Fries',
        imageUrl:
            'https://www.daysoftheyear.com/wp-content/uploads/national-fast-food-day.jpg',
        creationDate: DateTime.timestamp(),
        items: [
          GroceryModel(
            categoryId: '1235',
            name: 'Chicken',
            id: '',
            isDone: false,
            refinements: <RefinementsModel>[],
            notes: '',
            image: '',
            creationDate: DateTime.timestamp(),
          ),
        ],
      ),
    ]..sort((a, b) => a.name!.compareTo(b.name!));
    return recipes;
  }

  Future<RecipeModel> createRecipe(RecipeModel recipe) {
    throw UnimplementedError();
  }

  Future<RecipeModel> deleteRecipe(RecipeModel recipe) {
    throw UnimplementedError();
  }
}
