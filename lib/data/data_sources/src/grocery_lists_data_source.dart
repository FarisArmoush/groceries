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
