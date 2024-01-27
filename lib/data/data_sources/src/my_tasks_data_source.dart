part of '../data_sources.dart';

class MyTasksDataSource {
  const MyTasksDataSource(this._firestore);

  // ignore: unused_field
  final FirebaseFirestore _firestore;
  Future<List<TaskModel>> fetchMyTasks() async {
    final myTasks = [
      TaskModel(
        id: '123',
        dueDate: DateTime(2022, 3, 19),
        creationDate: DateTime.timestamp(),
        listModel: GroceryListModel(
          id: '123',
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
        id: '123',
        dueDate: DateTime(2022, 3, 20),
        creationDate: DateTime.timestamp(),
        listModel: GroceryListModel(
          creationDate: DateTime.timestamp(),
          id: '123',
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
        id: '123',
        dueDate: DateTime(2022, 3, 21),
        creationDate: DateTime.timestamp(),
        listModel: GroceryListModel(
          id: '123',
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
    ]..sort((a, b) => b.dueDate?.compareTo(a.dueDate ?? DateTime.now()) ?? 0);
    Future.delayed(Durations.extralong4, () {
      return myTasks;
    });
    return myTasks;
  }

  Future<void> markTaskAsDone(TaskModel? task) {
    throw UnimplementedError('Hasnt been implemented yet.');
  }
}
