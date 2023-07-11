import 'package:faker/faker.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:groceries/domain/repositories/base_grocery_lists_repository.dart';

class MockGroceryListsRepository extends BaseGroceryListsRepository {
  @override
  Future<List<GroceryListModel>> getLists() async {
    return lists;
  }

  @override
  List<GroceryListModel> get lists => [
        GroceryListModel(
          name: 'Work',
          imageUrl: faker.image.image(),
          uid: 123,
          members: const <UserModel>[],
          items: const <GroceryModel>[],
        ),
        GroceryListModel(
          name: 'Home',
          imageUrl: faker.image.image(),
          uid: 345,
          members: const <UserModel>[],
          items: const <GroceryModel>[],
        ),
        GroceryListModel(
          name: 'Friends',
          imageUrl: faker.image.image(),
          uid: 567,
          members: const <UserModel>[],
          items: const <GroceryModel>[],
        ),
      ];
}
