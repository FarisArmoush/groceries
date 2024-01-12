import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';
import 'package:test/test.dart';

void main() {
  group('RecipeModel', () {
    test('RecipeModel.fromJson', () {
      final json = <String, Object?>{
        'id': '123',
        'name': 'Delicious Recipe',
        'imageUrl': 'https://example.com/recipe.jpg',
        'items': [
          {
            'categoryId': '456',
            'creationDate':
                Timestamp.fromDate(DateTime(2022, 01, 12, 15, 30, 45)),
            'id': '789',
            'image': 'https://example.com/grocery.jpg',
            'isDone': true,
            'name': 'Fresh Grocery',
            'notes': 'Some notes about the grocery item',
            'refinements': [
              {
                'refinement': 'Category',
                'isChecked': true,
              },
              {
                'refinement': 'Organic',
                'isChecked': false,
              },
            ],
          },
        ],
        'creationDate': Timestamp.fromDate(DateTime(2022, 01, 12, 15, 30, 45)),
      };

      final recipeModel = RecipeModel.fromJson(json);

      expect(recipeModel.id, '123');
      expect(recipeModel.name, 'Delicious Recipe');
      expect(recipeModel.imageUrl, 'https://example.com/recipe.jpg');
      expect(recipeModel.items?[0]?.categoryId, '456');
      expect(
        recipeModel.items?[0]?.creationDate,
        DateTime(2022, 01, 12, 15, 30, 45),
      );
      expect(recipeModel.items?[0]?.id, '789');
      expect(recipeModel.items?[0]?.image, 'https://example.com/grocery.jpg');
      expect(recipeModel.items?[0]?.isDone, true);
      expect(recipeModel.items?[0]?.name, 'Fresh Grocery');
      expect(recipeModel.items?[0]?.notes, 'Some notes about the grocery item');
      expect(recipeModel.items?[0]?.refinements?[0]?.refinement, 'Category');
      expect(recipeModel.items?[0]?.refinements?[0]?.isChecked, true);
      expect(recipeModel.items?[0]?.refinements?[1]?.refinement, 'Organic');
      expect(recipeModel.items?[0]?.refinements?[1]?.isChecked, false);
    });

    test('RecipeModel.toJson', () {
      final recipeModel = RecipeModel(
        id: '123',
        name: 'Delicious Recipe',
        imageUrl: 'https://example.com/recipe.jpg',
        items: [
          GroceryModel(
            categoryId: '456',
            creationDate: DateTime(2022, 01, 12, 15, 30, 45),
            id: '789',
            image: 'https://example.com/grocery.jpg',
            isDone: true,
            name: 'Fresh Grocery',
            notes: 'Some notes about the grocery item',
            refinements: [
              const RefinementsModel(
                refinement: 'Category',
                isChecked: true,
              ),
              const RefinementsModel(
                refinement: 'Organic',
                isChecked: false,
              ),
            ],
          ),
        ],
        creationDate: DateTime(2022, 01, 12, 15, 30, 45),
      );
      final json = recipeModel.toJson();

      expect(json['id'], '123');
      expect(json['name'], 'Delicious Recipe');
      expect(json['imageUrl'], 'https://example.com/recipe.jpg');
      expect(json['items'], isList);
    });
  });

  test('RecipeModel.Equality', () {
    final model1 = RecipeModel(
      id: '123',
      name: 'Delicious Recipe',
      imageUrl: 'https://example.com/recipe.jpg',
      items: [
        GroceryModel(
          categoryId: '456',
          creationDate: DateTime(2022, 01, 12, 15, 30, 45),
          id: '789',
          image: 'https://example.com/grocery.jpg',
          isDone: true,
          name: 'Fresh Grocery',
          notes: 'Some notes about the grocery item',
          refinements: [
            const RefinementsModel(
              refinement: 'Category',
              isChecked: true,
            ),
            const RefinementsModel(
              refinement: 'Organic',
              isChecked: false,
            ),
          ],
        ),
      ],
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
    );

    final model2 = RecipeModel(
      id: '123',
      name: 'Delicious Recipe',
      imageUrl: 'https://example.com/recipe.jpg',
      items: [
        GroceryModel(
          categoryId: '456',
          creationDate: DateTime(2022, 01, 12, 15, 30, 45),
          id: '789',
          image: 'https://example.com/grocery.jpg',
          isDone: true,
          name: 'Fresh Grocery',
          notes: 'Some notes about the grocery item',
          refinements: [
            const RefinementsModel(
              refinement: 'Category',
              isChecked: true,
            ),
            const RefinementsModel(
              refinement: 'Organic',
              isChecked: false,
            ),
          ],
        ),
      ],
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
    );

    expect(model1, model2);
  });

  test('RecipeModel.copyWith', () {
    final originalModel = RecipeModel(
      id: '123',
      name: 'Delicious Recipe',
      imageUrl: 'https://example.com/recipe.jpg',
      items: [
        GroceryModel(
          categoryId: '456',
          creationDate: DateTime(2022, 01, 12, 15, 30, 45),
          id: '789',
          image: 'https://example.com/grocery.jpg',
          isDone: true,
          name: 'Fresh Grocery',
          notes: 'Some notes about the grocery item',
          refinements: [
            const RefinementsModel(
              refinement: 'Category',
              isChecked: true,
            ),
            const RefinementsModel(
              refinement: 'Organic',
              isChecked: false,
            ),
          ],
        ),
      ],
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
    );

    final modifiedModel = originalModel.copyWith(
      name: 'Modified Recipe',
    );

    expect(modifiedModel.id, originalModel.id);
    expect(modifiedModel.name, 'Modified Recipe');
    expect(modifiedModel, isNot(originalModel));
  });
}
