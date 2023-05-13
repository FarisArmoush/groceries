import 'package:faker/faker.dart';
import 'package:groceries/data/models/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model.dart';
import 'package:groceries/data/models/task_model.dart';
import 'package:groceries/domain/repositories/base_my_tasks_repository.dart';

class MockTasksRepository extends BaseTasksRepository {
  @override
  Future<List<TaskModel>> getMyTasks() async {
    return myTasks;
  }

  @override
  List<TaskModel> get myTasks => [
        TaskModel(
          id: 'aspoidfjn',
          groceriesAmount: faker.randomGenerator.integer(10),
          dueDate: faker.date.dateTime(),
          listModel: GroceryListModel(
            uid: 1,
            name: faker.company.name(),
            imageUrl: faker.image.image(),
            tasksAmount: faker.randomGenerator.integer(99),
            members: const [],
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
          id: 'aspoidfjn',
          groceriesAmount: faker.randomGenerator.integer(10),
          dueDate: faker.date.dateTime(),
          listModel: GroceryListModel(
            uid: 1,
            name: faker.company.name(),
            imageUrl: faker.image.image(),
            tasksAmount: faker.randomGenerator.integer(99),
            members: const [],
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
          id: 'aspoidfjn',
          groceriesAmount: faker.randomGenerator.integer(10),
          dueDate: faker.date.dateTime(),
          listModel: GroceryListModel(
            uid: 1,
            name: faker.company.name(),
            imageUrl: faker.image.image(),
            tasksAmount: faker.randomGenerator.integer(99),
            members: const [],
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
          id: 'aspoidfjn',
          groceriesAmount: faker.randomGenerator.integer(10),
          dueDate: faker.date.dateTime(),
          listModel: GroceryListModel(
            uid: 1,
            name: faker.company.name(),
            imageUrl: faker.image.image(),
            tasksAmount: faker.randomGenerator.integer(99),
            members: const [],
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
