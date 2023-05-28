import 'package:groceries/data/models/grocery_list_model.dart';
import 'package:groceries/domain/repositories/base_grocery_lists_repository.dart';

class MockGroceryListsRepository extends BaseGroceryListsRepository {
  @override
  Future<List<GroceryListModel>> getLists() async {
    return lists;
  }

  @override
  List<GroceryListModel> get lists => [
        // GroceryListModel(
        //   name: faker.company.name(),
        //   imageUrl: faker.image.image(),
        //   uid: 1,
        //   tasksAmount: faker.randomGenerator.integer(10),
        //   members: const <UserModel>[],
        // ),
        // GroceryListModel(
        //   name: faker.company.name(),
        //   imageUrl: faker.image.image(),
        //   uid: 1,
        //   tasksAmount: faker.randomGenerator.integer(10),
        //   members: const <UserModel>[],
        // ),
        // GroceryListModel(
        //   name: faker.company.name(),
        //   imageUrl: faker.image.image(),
        //   uid: 1,
        //   tasksAmount: faker.randomGenerator.integer(10),
        //   members: const <UserModel>[],
        // ),
        // GroceryListModel(
        //   name: faker.company.name(),
        //   imageUrl: faker.image.image(),
        //   uid: 1,
        //   tasksAmount: faker.randomGenerator.integer(10),
        //   members: const <UserModel>[],
        // ),
      ];
}
