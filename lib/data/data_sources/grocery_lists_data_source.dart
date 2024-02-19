import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class GroceryListsDataSource {
  const GroceryListsDataSource();

  // ignore: unused_element
  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  Future<List<GroceryListModel>> fetchMyGroceryLists() async {
    final lists = <GroceryListModel>[
      GroceryListModel(
        name: 'Home',
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

  Future<void> deleteGroceryList(String? uid) async {
    log('deleteGroceryList');
    throw UnimplementedError();
  }

  Future<void> createGroceryList(GroceryListModel? groceryListModel) async {
    log('createGroceryList');
    throw UnimplementedError();
  }

  Future<void> removeMember(UserModel? userModel) async {
    log('removeMember');
    throw UnimplementedError();
  }

  Future<void> updateListImage(String? image) {
    log('updateListImage');
    throw UnimplementedError();
  }

  Future<void> updateListName(String? name) {
    log('updateListName');
    throw UnimplementedError();
  }
}
