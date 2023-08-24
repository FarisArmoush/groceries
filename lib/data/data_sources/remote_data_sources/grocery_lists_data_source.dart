import 'package:faker/faker.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';

class GroceryListsDataSource {
  Future<List<GroceryListModel>> fetchMyGroceryLists() async {
    final lists = <GroceryListModel>[
      GroceryListModel(
        name: 'Work',
        imageUrl: faker.image.image(),
        uid: 123,
        members: const <UserModel>[],
        items: const <GroceryModel>[],
      ),
      GroceryListModel(
        name: 'Home',
        imageUrl: faker.image.image(),
        uid: 345,
        members: const <UserModel>[],
        items: const <GroceryModel>[],
      ),
      GroceryListModel(
        name: 'Friends',
        imageUrl: faker.image.image(),
        uid: 567,
        members: const <UserModel>[],
        items: const <GroceryModel>[
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
    ];
    return lists;
  }

  Future<void> deleteGroceryList(String uid) {
    throw UnimplementedError();
  }
}
