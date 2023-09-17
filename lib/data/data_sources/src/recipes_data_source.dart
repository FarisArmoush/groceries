part of '../data_sources.dart';

class RecipesDataSource {
  Future<List<RecipeModel>> fetchRecipes() async {
    final recipes = <RecipeModel>[
      RecipeModel(
        uid: '123',
        name: 'Vegetables Salad',
        imageUrl:
            'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg',
        creationDate: DateTime.timestamp(),
        items: [
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Carrots',
            category: 'Fruits and Vegetables',
            notes: '2 KG',
            imageUrl: '',
            creationDate: DateTime.timestamp(),
          ),
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Cucumbers',
            category: 'Fruits and Vegetables',
            notes: '2 KG',
            imageUrl: '',
            creationDate: DateTime.timestamp(),
          ),
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Tomatoes',
            category: 'Fruits and Vegetables',
            notes: '2 KG',
            imageUrl: '',
            creationDate: DateTime.timestamp(),
          ),
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Eggplants',
            category: 'Fruits and Vegetables',
            notes: '2 KG',
            imageUrl: '',
            creationDate: DateTime.timestamp(),
          ),
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Parsley',
            category: 'Fruits and Vegetables',
            notes: '2 KG',
            imageUrl: '',
            creationDate: DateTime.timestamp(),
          ),
        ],
      ),
      RecipeModel(
        uid: '234',
        name: 'American Breakfast',
        imageUrl:
            'https://www.eatingwell.com/thmb/m5xUzIOmhWSoXZnY-oZcO9SdArQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/article_291139_the-top-10-healthiest-foods-for-kids_-02-4b745e57928c4786a61b47d8ba920058.jpg',
        creationDate: DateTime.timestamp(),
        items: [
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Eggs',
            category: 'Dairy',
            imageUrl: '',
            notes: '5 eggs',
            creationDate: DateTime.timestamp(),
          ),
        ],
      ),
      RecipeModel(
        uid: '345',
        name: 'Beef Burger & Fries',
        imageUrl:
            'https://www.daysoftheyear.com/wp-content/uploads/national-fast-food-day.jpg',
        creationDate: DateTime.timestamp(),
        items: [
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Beef Patty',
            category: 'Meats',
            imageUrl: '',
            notes: '1 KG',
            creationDate: DateTime.timestamp(),
          ),
        ],
      ),
    ]..sort((a, b) => a.name.compareTo(b.name));
    return recipes;
  }

  Future<RecipeModel> createRecipe(RecipeModel recipe) {
    throw UnimplementedError();
  }

  Future<RecipeModel> deleteRecipe(RecipeModel recipe) {
    throw UnimplementedError();
  }
}
