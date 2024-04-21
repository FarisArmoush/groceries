import 'dart:developer';

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:groceries/data/data_sources/interfaces/grocery_lists_data_source.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: GroceryListsDataSource)
class MockGroceryListsDataSource implements GroceryListsDataSource {
  const MockGroceryListsDataSource();

  @override
  Future<List<GroceryListModel>> fetchMyGroceryLists() async {
    final lists = <GroceryListModel>[
      GroceryListModel(
        name: 'Home',
        imageUrl: faker.image.image(),
        id: '123',
        members: <UserModel>[],
        creationDate: DateTime.timestamp(),
        items: <GroceryModel>[],
      ),
      GroceryListModel(
        name: 'Work',
        imageUrl: faker.image.image(),
        id: '123',
        members: <UserModel>[],
        items: <GroceryModel>[],
        creationDate: DateTime.timestamp(),
      ),
      GroceryListModel(
        name: 'Friends',
        imageUrl: faker.image.image(),
        id: '123',
        members: <UserModel>[],
        creationDate: DateTime.timestamp(),
        items: <GroceryModel>[
          GroceryModel(
            categoryId: '1235',
            name: 'Chicken',
            id: '',
            isDone: false,
            refinements: <RefinementsModel>[],
            notes: '',
            image: '',
            creationDate: DateTime.timestamp(),
          ),
        ],
      ),
    ]..sort((a, b) => a.name?.compareTo(b.name ?? '') ?? 0);
    await Future.delayed(Durations.extralong4, () {
      return lists;
    });
    return lists;
  }

  @override
  Future<void> deleteGroceryList(String? uid) async {
    log('deleteGroceryList');
    throw UnimplementedError();
  }

  @override
  Future<void> createGroceryList(GroceryListModel? groceryListModel) async {
    log('createGroceryList');
    throw UnimplementedError();
  }

  @override
  Future<void> removeMember(UserModel? userModel) async {
    log('removeMember');
    throw UnimplementedError();
  }

  @override
  Future<void> updateListImage(String? image) {
    log('updateListImage');
    throw UnimplementedError();
  }

  @override
  Future<void> updateListName(String? name) {
    log('updateListName');
    throw UnimplementedError();
  }
}
