import 'package:faker/faker.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/domain/repositories/base_my_tasks_repository.dart';

class MockTasksRepository extends BaseTasksRepository {
  @override
  Future<List<TaskModel>> getMyTasks() async {
    return myTasks;
  }

  @override
  List<TaskModel> get myTasks => [
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
}
