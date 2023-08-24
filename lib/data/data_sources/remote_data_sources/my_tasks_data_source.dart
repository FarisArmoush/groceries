import 'package:faker/faker.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';

class MyTasksDataSource {
  Future<List<TaskModel>> fetchMyTasks() async {
    final myTasks = [
      TaskModel(
        uid: faker.internet.ipv4Address(),
        dueDate: faker.date.dateTime(),
        listModel: GroceryListModel(
          uid: 1,
          name: faker.company.name(),
          imageUrl: faker.image.image(),
          members: const <UserModel>[],
          items: const <GroceryModel>[],
        ),
        groceries: [
          GroceryModel(
            name: faker.food.dish(),
            id: faker.internet.ipv4Address(),
            category: faker.food.dish(),
            notes: faker.lorem.sentence(),
          ),
        ],
      ),
      TaskModel(
        uid: faker.internet.ipv4Address(),
        dueDate: faker.date.dateTime(),
        listModel: GroceryListModel(
          uid: 1,
          name: faker.company.name(),
          imageUrl: faker.image.image(),
          members: const <UserModel>[],
          items: const <GroceryModel>[],
        ),
        groceries: [
          GroceryModel(
            name: faker.food.dish(),
            id: faker.internet.ipv4Address(),
            category: faker.food.dish(),
            notes: faker.lorem.sentence(),
          ),
        ],
      ),
      TaskModel(
        uid: faker.internet.ipv4Address(),
        dueDate: faker.date.dateTime(),
        listModel: GroceryListModel(
          uid: 1,
          name: faker.company.name(),
          imageUrl: faker.image.image(),
          members: const <UserModel>[],
          items: const <GroceryModel>[],
        ),
        groceries: [
          GroceryModel(
            name: faker.food.dish(),
            id: faker.internet.ipv4Address(),
            category: faker.food.dish(),
            notes: faker.lorem.sentence(),
          ),
        ],
      ),
    ];
    return myTasks;
  }

  Future<void> markTaskAsDone(TaskModel task) {
    throw UnimplementedError('Hasnt been implemented yet.');
  }
}
