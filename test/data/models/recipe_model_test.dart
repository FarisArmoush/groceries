import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/models/recipe_model/recipe_model.dart';
import 'package:test/test.dart';

void main() {
  group('RecipeModel', () {
    test('RecipeModel.fromJson', () {
      final json = <String, Object?>{
        'id': '123',
        'name': 'Delicious Recipe',
        'imageUrl': 'https://example.com/recipe.jpg',
        'creationDate': Timestamp.fromDate(DateTime(2022, 01, 12, 15, 30, 45)),
      };

      final recipeModel = RecipeModel.fromJson(json);

      expect(recipeModel.id, '123');
      expect(recipeModel.name, 'Delicious Recipe');
      expect(recipeModel.imageUrl, 'https://example.com/recipe.jpg');
    });

    test('RecipeModel.toJson', () {
      final recipeModel = RecipeModel(
        id: '123',
        name: 'Delicious Recipe',
        imageUrl: 'https://example.com/recipe.jpg',
        creationDate: DateTime(2022, 01, 12, 15, 30, 45),
      );
      final json = recipeModel.toJson();

      expect(json['id'], '123');
      expect(json['name'], 'Delicious Recipe');
      expect(json['imageUrl'], 'https://example.com/recipe.jpg');
    });
  });

  test('RecipeModel.Equality', () {
    final model1 = RecipeModel(
      id: '123',
      name: 'Delicious Recipe',
      imageUrl: 'https://example.com/recipe.jpg',
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
    );

    final model2 = RecipeModel(
      id: '123',
      name: 'Delicious Recipe',
      imageUrl: 'https://example.com/recipe.jpg',
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
    );

    expect(model1, model2);
  });

  test('RecipeModel.copyWith', () {
    final originalModel = RecipeModel(
      id: '123',
      name: 'Delicious Recipe',
      imageUrl: 'https://example.com/recipe.jpg',
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
