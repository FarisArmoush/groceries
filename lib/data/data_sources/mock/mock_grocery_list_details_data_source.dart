import 'package:faker/faker.dart';
import 'package:groceries/data/data_sources/interfaces/grocery_list_details_data_source.dart';
import 'package:groceries/data/models/grocery/grocery_model.dart';
import 'package:groceries/data/models/grocery_list_details/grocery_list_details_model.dart';
import 'package:groceries/data/models/refinements/refinements_model.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: GroceryListDetailsDataSource)
class MockGroceryListDetailsDataSource implements GroceryListDetailsDataSource {
  @override
  Future<GroceryListDetailsModel?> fetchDetails(String? uid) async {
    await Future.delayed(250.milliseconds, () {});
    return GroceryListDetailsModel(
      id: uid,
      name: 'Work',
      imageUrl: faker.image.image(),
      items: [
        GroceryModel(
          categoryId: '1235',
          name: 'Chicken',
          id: '',
          isDone: false,
          refinements: <RefinementsModel>[],
          notes: '',
          image: '',
          priorityId: 'lnw0egeudF8ixG18Hd3K',
          creationDate: DateTime.now(),
        ),
      ],
      members: [],
      creationDate: DateTime.now(),
    );
  }

  @override
  Future<void> clearList(String? uid) async {
    throw UnimplementedError();
  }

  @override
  Future<void> addItem(String? itemUid) async {
    throw UnimplementedError();
  }

  @override
  Future<void> deleteGroceryList(String? uid) async {
    throw UnimplementedError();
  }

  @override
  Future<void> removeItem(String? itemUid) async {
    throw UnimplementedError();
  }

  @override
  Future<void> removeMember(String? memberId) async {
    throw UnimplementedError();
  }

  @override
  Future<void> updateListImage(String? image) async {
    throw UnimplementedError();
  }

  @override
  Future<void> updateListName(String? name) async {
    throw UnimplementedError();
  }
}
