import 'package:faker/faker.dart';
import 'package:groceries/app/data/models/grocery_model.dart';
import 'package:groceries/app/data/models/list_model.dart';
import 'package:groceries/app/data/models/task_model.dart';
import 'package:groceries/app/domain/repositories/base_my_tasks_repository.dart';

class MockTasksRepository extends BaseTasksRepository {
  @override
  Future<List<TaskModel>> getMyTasks() async {
    return myTasks;
  }

  @override
  List<TaskModel> get myTasks => [
        TaskModel(
          groceriesAmount: faker.randomGenerator.integer(10),
          dueDate: faker.date.dateTime(),
          listModel: ListModel(
            uid: 1,
            groupName: faker.company.name(),
            imageUrl: faker.image.image(),
          ),
          groceries: [
            GroceryModel(
              name: faker.food.dish(),
              uid: faker.randomGenerator.integer(99),
              category: faker.food.dish(),
              notes: faker.lorem.sentence(),
            ),
          ],
        ),
        TaskModel(
          groceriesAmount: faker.randomGenerator.integer(10),
          dueDate: faker.date.dateTime(),
          listModel: ListModel(
            uid: 1,
            groupName: faker.company.name(),
            imageUrl: faker.image.image(),
          ),
          groceries: [
            GroceryModel(
              name: faker.food.dish(),
              uid: faker.randomGenerator.integer(99),
              category: faker.food.dish(),
              notes: faker.lorem.sentence(),
            ),
          ],
        ),
        TaskModel(
          groceriesAmount: faker.randomGenerator.integer(10),
          dueDate: faker.date.dateTime(),
          listModel: ListModel(
            uid: 1,
            groupName: faker.company.name(),
            imageUrl: faker.image.image(),
          ),
          groceries: [
            GroceryModel(
              name: faker.food.dish(),
              uid: faker.randomGenerator.integer(99),
              category: faker.food.dish(),
              notes: faker.lorem.sentence(),
            ),
          ],
        ),
        TaskModel(
          groceriesAmount: faker.randomGenerator.integer(10),
          dueDate: faker.date.dateTime(),
          listModel: ListModel(
            uid: 1,
            groupName: faker.company.name(),
            imageUrl: faker.image.image(),
          ),
          groceries: [
            GroceryModel(
              name: faker.food.dish(),
              uid: faker.randomGenerator.integer(99),
              category: faker.food.dish(),
              notes: faker.lorem.sentence(),
            ),
          ],
        ),
      ];
}
