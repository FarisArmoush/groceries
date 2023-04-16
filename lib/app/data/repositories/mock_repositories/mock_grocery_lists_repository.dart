import 'package:faker/faker.dart';
import 'package:groceries/app/data/models/list_model.dart';
import 'package:groceries/app/data/models/user_model.dart';
import 'package:groceries/app/domain/repositories/base_grocery_lists_repository.dart';

class MockGroceryListsRepository extends BaseGroceryListsRepository {
  @override
  Future<List<ListModel>> getLists() async {
    return lists;
  }

  @override
  List<ListModel> get lists => [
        ListModel(
          groupName: faker.company.name(),
          imageUrl: faker.image.image(),
          uid: 1,
          tasksAmount: faker.randomGenerator.integer(10),
          members: const <UserModel>[],
        ),
        ListModel(
          groupName: faker.company.name(),
          imageUrl: faker.image.image(),
          uid: 1,
          tasksAmount: faker.randomGenerator.integer(10),
          members: const <UserModel>[],
        ),
        ListModel(
          groupName: faker.company.name(),
          imageUrl: faker.image.image(),
          uid: 1,
          tasksAmount: faker.randomGenerator.integer(10),
          members: const <UserModel>[],
        ),
        ListModel(
          groupName: faker.company.name(),
          imageUrl: faker.image.image(),
          uid: 1,
          tasksAmount: faker.randomGenerator.integer(10),
          members: const <UserModel>[],
        ),
      ];
}
