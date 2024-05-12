import 'package:groceries/data/data_sources/interfaces/recipe_details_data_source.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/recipe_details_model/recipe_details_model.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: RecipeDetailsDataSource)
class MockRecipeDetailsDataSource implements RecipeDetailsDataSource {
  const MockRecipeDetailsDataSource();

  @override
  Future<RecipeDetailsModel?> fetchDetails(String? uid) async {
    return RecipeDetailsModel(
      id: '123',
      name: 'Vegetables Salad',
      imageUrl:
          'https://cdn.britannica.com/36/123536-050-95CB0C6E/Variety-fruits-vegetables.jpg',
      items: <GroceryModel>[
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

  @override
  Future<void> deleteRecipe(String? uid) async {
    throw UnimplementedError();
  }
}
