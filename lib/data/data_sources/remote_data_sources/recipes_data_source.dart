import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';

class RecipesDataSource {
  Future<List<RecipeModel>> fetchRecipes() async {
    final recipes = [
      const RecipeModel(
        uid: '123',
        name: 'Vegetables Salad',
        imageUrl:
            'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg',
        items: [
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Carrots',
            category: 'Fruits and Vegetables',
            notes: '2 KG',
          ),
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Cucumbers',
            category: 'Fruits and Vegetables',
            notes: '2 KG',
          ),
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Tomatoes',
            category: 'Fruits and Vegetables',
            notes: '2 KG',
          ),
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Eggplants',
            category: 'Fruits and Vegetables',
            notes: '2 KG',
          ),
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Parsley',
            category: 'Fruits and Vegetables',
            notes: '2 KG',
          ),
        ],
      ),
      const RecipeModel(
        uid: '234',
        name: 'American Breakfast',
        imageUrl:
            'https://www.eatingwell.com/thmb/m5xUzIOmhWSoXZnY-oZcO9SdArQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/article_291139_the-top-10-healthiest-foods-for-kids_-02-4b745e57928c4786a61b47d8ba920058.jpg',
        items: [
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Eggs',
            category: 'Dairy',
            notes: '5 eggs',
          ),
        ],
      ),
      const RecipeModel(
        uid: '345',
        name: 'Beef Burger & Fries',
        imageUrl:
            'https://www.daysoftheyear.com/wp-content/uploads/national-fast-food-day.jpg',
        items: [
          GroceryModel(
            id: 'asFDE[JOMI]',
            name: 'Beef Patty',
            category: 'Meats',
            notes: '1 KG',
          ),
        ],
      ),
    ];
    return recipes;
  }

  Future<RecipeModel> createRecipe(RecipeModel recipe) {
    throw UnimplementedError();
  }

  Future<RecipeModel> deleteRecipe(RecipeModel recipe) {
    throw UnimplementedError();
  }
}
