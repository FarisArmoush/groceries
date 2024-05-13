import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/grocery/grocery_model.dart';
import 'package:groceries/data/models/refinements/refinements_model.dart';

void main() {
  group('GroceryModel', () {
    test('GroceryModel.fromJson', () {
      final json = <String, Object?>{
        'categoryId': '123',
        'creationDate': Timestamp.fromDate(DateTime(2022, 01, 12, 15, 30, 45)),
        'id': '456',
        'image': 'https://example.com/grocery.jpg',
        'isDone': true,
        'name': 'Example Grocery',
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
      };

      final groceryModel = GroceryModel.fromJson(json);

      expect(groceryModel.categoryId, '123');
      expect(groceryModel.creationDate, DateTime(2022, 01, 12, 15, 30, 45));
      expect(groceryModel.id, '456');
      expect(groceryModel.image, 'https://example.com/grocery.jpg');
      expect(groceryModel.isDone, true);
      expect(groceryModel.name, 'Example Grocery');
      expect(groceryModel.notes, 'Some notes about the grocery item');
      expect(groceryModel.refinements, [
        const RefinementsModel(refinement: 'Category', isChecked: true),
        const RefinementsModel(refinement: 'Organic', isChecked: false),
      ]);
    });

    test('GroceryModel.toJson', () {
      final groceryModel = GroceryModel(
        categoryId: '123',
        creationDate: DateTime(2022, 01, 12, 15, 30, 45),
        id: '456',
        image: 'https://example.com/grocery.jpg',
        isDone: true,
        name: 'Example Grocery',
        notes: 'Some notes about the grocery item',
        refinements: [
          const RefinementsModel(refinement: 'Category', isChecked: true),
          const RefinementsModel(refinement: 'Organic', isChecked: false),
        ],
      );
      final json = groceryModel.toJson();

      expect(json['categoryId'], '123');
      expect(
        json['creationDate'],
        Timestamp.fromDate(DateTime(2022, 01, 12, 15, 30, 45)),
      );
      expect(json['id'], '456');
      expect(json['image'], 'https://example.com/grocery.jpg');
      expect(json['isDone'], true);
      expect(json['name'], 'Example Grocery');
      expect(json['notes'], 'Some notes about the grocery item');
      expect(json['refinements'], [
        const RefinementsModel(refinement: 'Category', isChecked: true),
        const RefinementsModel(refinement: 'Organic', isChecked: false),
      ]);
    });
  });

  test('GroceryModel.Equality', () {
    final model1 = GroceryModel(
      categoryId: '123',
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
      id: '456',
      image: 'https://example.com/grocery.jpg',
      isDone: true,
      name: 'Example Grocery',
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
    );

    final model2 = GroceryModel(
      categoryId: '123',
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
      id: '456',
      image: 'https://example.com/grocery.jpg',
      isDone: true,
      name: 'Example Grocery',
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
        // Add other RefinementsModel data
      ],
    );

    expect(model1, model2);
  });

  test('GroceryModel.copyWith', () {
    final originalModel = GroceryModel(
      categoryId: '123',
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
      id: '456',
      image: 'https://example.com/grocery.jpg',
      isDone: true,
      name: 'Example Grocery',
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
    );

    final modifiedModel = originalModel.copyWith(
      isDone: false,
    );

    expect(modifiedModel.categoryId, originalModel.categoryId);
    expect(modifiedModel.isDone, false);
    expect(modifiedModel, isNot(originalModel));
  });
}
