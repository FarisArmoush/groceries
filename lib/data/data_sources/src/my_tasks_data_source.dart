part of '../data_sources.dart';

class MyTasksDataSource {
  const MyTasksDataSource(this._firestore);

  // ignore: unused_field
  final FirebaseFirestore _firestore;
  Future<List<TaskModel>> fetchMyTasks() async {
    final myTasks = [
      TaskModel(
        uid: '123123',
        dueDate: DateTime(2022, 3, 19),
        creationDate: DateTime.timestamp(),
        listModel: GroceryListModel(
          uid: 1,
          name: 'Friends',
          imageUrl: mockImage,
          members: <UserModel>[],
          items: <GroceryModel>[],
          creationDate: DateTime.timestamp(),
        ),
        groceries: [
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
      TaskModel(
        uid: '123123',
        dueDate: DateTime(2022, 3, 20),
        creationDate: DateTime.timestamp(),
        listModel: GroceryListModel(
          creationDate: DateTime.timestamp(),
          uid: 1,
          name: 'Work',
          imageUrl: mockImage,
          members: <UserModel>[],
          items: <GroceryModel>[],
        ),
        groceries: [
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
      TaskModel(
        uid: '123123',
        dueDate: DateTime(2022, 3, 21),
        creationDate: DateTime.timestamp(),
        listModel: GroceryListModel(
          uid: 1,
          name: 'Home',
          imageUrl: mockImage,
          members: <UserModel>[],
          items: <GroceryModel>[],
          creationDate: DateTime.timestamp(),
        ),
        groceries: [
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
    ]..sort((a, b) => b.dueDate.compareTo(a.dueDate));
    return myTasks;
  }

  Future<void> markTaskAsDone(TaskModel task) {
    throw UnimplementedError('Hasnt been implemented yet.');
  }
}
