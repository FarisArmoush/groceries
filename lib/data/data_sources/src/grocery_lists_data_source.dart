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
        id: '123',
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
        id: '123',
        members: <UserModel>[],
        items: <GroceryModel>[],
        creationDate: DateTime.timestamp(),
      ),
      GroceryListModel(
        name: 'Friends',
        imageUrl: mockImage,
        id: '123',
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
    ]..sort((a, b) => a.name!.compareTo(b.name!));
    return lists;
  }

  Future<void> deleteGroceryList(String uid) async {
    throw UnimplementedError();
  }

  Future<void> createGroceryList(GroceryListModel groceryListModel) async {
    throw UnimplementedError();
  }

  Future<void> editGroceryList(GroceryListModel groceryListModel) async {
    throw UnimplementedError();
  }
}
