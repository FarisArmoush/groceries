import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';

class MyTasksDataSource {
  Future<List<TaskModel>> fetchMyTasks() async {
    final myTasks = [
      TaskModel(
        uid: '123123',
        dueDate: DateTime.now(),
        listModel: const GroceryListModel(
          uid: 1,
          name: 'Friends',
          imageUrl: '',
          members: <UserModel>[],
          items: <GroceryModel>[],
        ),
        groceries: [],
      ),
      TaskModel(
        uid: '123123',
        dueDate: DateTime.now(),
        listModel: const GroceryListModel(
          uid: 1,
          name: 'Work',
          imageUrl: '',
          members: <UserModel>[],
          items: <GroceryModel>[],
        ),
        groceries: [],
      ),
      TaskModel(
        uid: '123123',
        dueDate: DateTime.now(),
        listModel: const GroceryListModel(
          uid: 1,
          name: 'Home',
          imageUrl: '',
          members: <UserModel>[],
          items: <GroceryModel>[],
        ),
        groceries: [],
      ),
    ];
    return myTasks;
  }

  Future<void> markTaskAsDone(TaskModel task) {
    throw UnimplementedError('Hasnt been implemented yet.');
  }
}
