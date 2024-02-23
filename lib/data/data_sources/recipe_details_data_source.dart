import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/recipe_details_model/recipe_details_model.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class RecipeDetailsDataSource {
  const RecipeDetailsDataSource();
  // ignore: unused_element
  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  Future<RecipeDetailsModel?> fetchDetails(String? uid) async {
    return RecipeDetailsModel(
      id: '123',
      name: 'Vegetables Salad',
      imageUrl:
          'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg',
      items: <GroceryModel?>[
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
      steps: <String>[
        'Put the lime in the cocunut.',
        'take the lime out of the coconut.',
      ],
    );
  }

  Future<void> deleteRecipe(String? uid) async {
    throw UnimplementedError();
  }
}
