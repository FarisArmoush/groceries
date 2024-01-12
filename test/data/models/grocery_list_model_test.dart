import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';

void main() {
  group('GroceryListModel', () {
    test('GroceryListModel.fromJson', () {
      final json = <String, Object?>{
        'id': '789',
        'name': 'Example Grocery List',
        'imageUrl': 'https://example.com/grocery-list.jpg',
        'items': [
          {
            'categoryId': '123',
            'creationDate':
                Timestamp.fromDate(DateTime(2022, 01, 12, 15, 30, 45)),
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
          },
        ],
        'members': [
          {
            'id': '123',
            'name': 'John Doe',
            'email': 'john.doe@example.com',
            'imageUrl': 'https://example.com/avatar.jpg',
            'creationDate':
                Timestamp.fromDate(DateTime(2022, 01, 11, 12, 34, 56)),
          },
        ],
        'creationDate': Timestamp.fromDate(DateTime(2022, 01, 12, 15, 30, 45)),
      };

      final groceryListModel = GroceryListModel.fromJson(json);

      expect(groceryListModel.id, '789');
      expect(groceryListModel.name, 'Example Grocery List');
      expect(groceryListModel.imageUrl, 'https://example.com/grocery-list.jpg');

      expect(groceryListModel.items?.length, 1);
      expect(groceryListModel.items?[0]?.categoryId, '123');
      expect(
        groceryListModel.items?[0]?.creationDate,
        DateTime(2022, 01, 12, 15, 30, 45),
      );
      expect(groceryListModel.items?[0]?.id, '456');
      expect(
        groceryListModel.items?[0]?.image,
        'https://example.com/grocery.jpg',
      );
      expect(groceryListModel.items?[0]?.isDone, true);
      expect(groceryListModel.items?[0]?.name, 'Example Grocery');
      expect(
        groceryListModel.items?[0]?.notes,
        'Some notes about the grocery item',
      );
      expect(
        groceryListModel.items?[0]?.refinements?[0]?.refinement,
        'Category',
      );
      expect(groceryListModel.items?[0]?.refinements?[0]?.isChecked, true);
      expect(
        groceryListModel.items?[0]?.refinements?[1]?.refinement,
        'Organic',
      );
      expect(groceryListModel.items?[0]?.refinements?[1]?.isChecked, false);

      expect(groceryListModel.members?.length, 1);
      expect(groceryListModel.members?[0]?.id, '123');
      expect(groceryListModel.members?[0]?.name, 'John Doe');
      expect(groceryListModel.members?[0]?.email, 'john.doe@example.com');
      expect(
        groceryListModel.members?[0]?.imageUrl,
        'https://example.com/avatar.jpg',
      );
      expect(
        groceryListModel.members?[0]?.creationDate,
        DateTime(2022, 01, 11, 12, 34, 56),
      );

      expect(
        groceryListModel.creationDate,
        DateTime(2022, 01, 12, 15, 30, 45),
      );
    });

    test('GroceryListModel.toJson', () {
      final groceryListModel = GroceryListModel(
        id: '789',
        name: 'Example Grocery List',
        imageUrl: 'https://example.com/grocery-list.jpg',
        items: [
          GroceryModel(
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
          ),
        ],
        members: [
          UserModel(
            id: '123',
            name: 'John Doe',
            email: 'john.doe@example.com',
            imageUrl: 'https://example.com/avatar.jpg',
            creationDate: DateTime(2022, 01, 11, 12, 34, 56),
          ),
        ],
        creationDate: DateTime(2022, 01, 12, 15, 30, 45),
      );
      final json = groceryListModel.toJson();

      expect(json['id'], '789');
      expect(json['name'], 'Example Grocery List');
      expect(json['imageUrl'], 'https://example.com/grocery-list.jpg');
    });
  });

  test('GroceryListModel.Equality', () {
    final model1 = GroceryListModel(
      id: '789',
      name: 'Example Grocery List',
      imageUrl: 'https://example.com/grocery-list.jpg',
      items: [
        GroceryModel(
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
        ),
      ],
      members: [
        UserModel(
          id: '123',
          name: 'John Doe',
          email: 'john.doe@example.com',
          imageUrl: 'https://example.com/avatar.jpg',
          creationDate: DateTime(2022, 01, 11, 12, 34, 56),
        ),
      ],
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
    );

    final model2 = GroceryListModel(
      id: '789',
      name: 'Example Grocery List',
      imageUrl: 'https://example.com/grocery-list.jpg',
      items: [
        GroceryModel(
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
        ),
      ],
      members: [
        UserModel(
          id: '123',
          name: 'John Doe',
          email: 'john.doe@example.com',
          imageUrl: 'https://example.com/avatar.jpg',
          creationDate: DateTime(2022, 01, 11, 12, 34, 56),
        ),
      ],
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
    );

    expect(model1, model2);
  });

  test('GroceryListModel.NotEqual', () {
    final model1 = GroceryListModel(
      id: '789',
      name: 'Example Grocery List',
      imageUrl: 'https://example.com/grocery-list.jpg',
      items: [
        GroceryModel(
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
        ),
      ],
      members: [
        UserModel(
          id: '123',
          name: 'John Doe',
          email: 'john.doe@example.com',
          imageUrl: 'https://example.com/avatar.jpg',
          creationDate: DateTime(2022, 01, 11, 12, 34, 56),
        ),
      ],
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
    );

    final model2 = GroceryListModel(
      id: '789',
      name: 'Example Grocery List',
      imageUrl: 'https://example.com/grocery-list.jpg',
      items: [
        GroceryModel(
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
              isChecked: true,
            ),
          ],
        ),
      ],
      members: [
        UserModel(
          id: '123',
          name: 'John Doe',
          email: 'john.doe@example.com',
          imageUrl: 'https://example.com/avatar.jpg',
          creationDate: DateTime(2022, 01, 11, 12, 34, 56),
        ),
      ],
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
    );

    expect(model1, isNot(model2));
  });

  test('GroceryListModel.copyWith', () {
    final originalModel = GroceryListModel(
      id: '789',
      name: 'Example Grocery List',
      imageUrl: 'https://example.com/grocery-list.jpg',
      items: [
        GroceryModel(
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
        ),
      ],
      members: [
        UserModel(
          id: '123',
          name: 'John Doe',
          email: 'john.doe@example.com',
          imageUrl: 'https://example.com/avatar.jpg',
          creationDate: DateTime(2022, 01, 11, 12, 34, 56),
        ),
        // Add other UserModel data
      ],
      creationDate: DateTime(2022, 01, 12, 15, 30, 45),
    );

    final modifiedModel = originalModel.copyWith(
      name: 'Modified Grocery List',
    );

    expect(modifiedModel.id, originalModel.id);
    expect(modifiedModel.name, 'Modified Grocery List');
    expect(modifiedModel, isNot(originalModel));
  });
}
