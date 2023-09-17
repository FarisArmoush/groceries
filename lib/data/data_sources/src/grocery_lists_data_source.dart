part of '../data_sources.dart';

class GroceryListsDataSource {
  GroceryListsDataSource(this._firestore);

  // ignore: unused_field
  final FirebaseFirestore _firestore;

  Future<List<GroceryListModel>> fetchMyGroceryLists() async {
    final lists = <GroceryListModel>[
      GroceryListModel(
        name: 'Home',
        imageUrl: mockImage,
        uid: 123,
        members: <UserModel>[],
        creationDate: DateTime.timestamp(),
        items: <GroceryModel>[
          GroceryModel(
            id: '1235',
            name: 'Chicken',
            category: 'Eggs & Dairy',
            notes: '1 kg',
            imageUrl:
                'https://www.budgetbytes.com/wp-content/uploads/2021/12/Chicken-Breast-Pan.jpg',
            creationDate: DateTime.timestamp(),
          ),
          GroceryModel(
            id: '12123134252346412343',
            name: 'Carrots',
            category: 'Fruits & Vegetables',
            notes: '5 big ones',
            imageUrl: '',
            creationDate: DateTime.timestamp(),
          ),
          GroceryModel(
            id: '12323462346324645',
            name: 'Leave in conditioner',
            category: 'Health Care',
            notes: 'Head and Shoulders, The mint one.',
            imageUrl: '',
            creationDate: DateTime.timestamp(),
          ),
          GroceryModel(
            id: '12343246234623465',
            name: 'Cheese',
            category: 'Eggs & Dairy',
            notes: 'Parmesan Cheese',
            imageUrl: '',
            creationDate: DateTime.timestamp(),
          ),
          GroceryModel(
            id: '12234623462346345',
            name: 'Hair Oil',
            category: 'Health Care',
            notes: 'Argan Oil Serum',
            imageUrl: '',
            creationDate: DateTime.timestamp(),
          ),
          GroceryModel(
            id: '122346234623462346345',
            name: 'Eggplants',
            category: 'Fruits & Vegetables',
            notes: '1 massive piece',
            imageUrl: '',
            creationDate: DateTime.timestamp(),
          ),
        ],
      ),
      GroceryListModel(
        name: 'Work',
        imageUrl: mockImage,
        uid: 345,
        members: <UserModel>[],
        items: <GroceryModel>[],
        creationDate: DateTime.timestamp(),
      ),
      GroceryListModel(
        name: 'Friends',
        imageUrl: mockImage,
        uid: 567,
        members: <UserModel>[],
        creationDate: DateTime.timestamp(),
        items: <GroceryModel>[
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
    ]..sort((a, b) => a.name.compareTo(b.name));
    return lists;
  }

  Future<void> deleteGroceryList(String uid) {
    throw UnimplementedError();
  }

  Future<void> createGroceryList(GroceryListModel groceryListModel) {
    throw UnimplementedError();
  }

  Future<void> editGroceryList(GroceryListModel groceryListModel) {
    throw UnimplementedError();
  }
}
