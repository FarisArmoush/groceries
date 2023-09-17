part of '../data_sources.dart';

class MyTasksDataSource {
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
            id: '1235',
            name: 'Chicken',
            category: 'Eggs & Dairy',
            notes: '1 kg',
            imageUrl:
                'https://www.budgetbytes.com/wp-content/uploads/2021/12/Chicken-Breast-Pan.jpg',
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
            id: '122346234623462346345',
            name: 'Eggplants',
            category: 'Fruits & Vegetables',
            notes: '1 massive piece',
            imageUrl: '',
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
