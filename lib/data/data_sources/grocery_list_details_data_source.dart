import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:groceries/data/models/grocery_list_details_model/grocery_list_details_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/extenstions/duration_simplifier_extension.dart';
import 'package:injectable/injectable.dart';

@singleton
class GroceryListDetailsDataSource {
  GroceryListDetailsDataSource();

  // ignore: unused_element
  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  Future<GroceryListDetailsModel?> fetchDetails(String? uid) async {
    await Future.delayed(2.seconds, () {});
    return GroceryListDetailsModel(
      id: uid,
      name: 'Work',
      imageUrl: mockImage,
      items: [
        GroceryModel(
          categoryId: '1235',
          name: 'Chicken',
          id: '',
          isDone: false,
          refinements: <RefinementsModel>[],
          notes: '',
          image: '',
          creationDate: DateTime.now(),
        ),
      ],
      members: [],
      creationDate: DateTime.now(),
    );
  }

  Future<void> clearList(String? uid) async {
    throw UnimplementedError();
  }

  Future<void> addItem(String? itemUid) async {
    throw UnimplementedError();
  }

  Future<void> deleteGroceryList(String? uid) async {
    throw UnimplementedError();
  }

  Future<void> removeItem(String? itemUid) async {
    throw UnimplementedError();
  }

  Future<void> removeMember(String? memberId) async {
    throw UnimplementedError();
  }

  Future<void> updateListImage(String? image) async {
    throw UnimplementedError();
  }

  Future<void> updateListName(String? name) async {
    throw UnimplementedError();
  }
}
