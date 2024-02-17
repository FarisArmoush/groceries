import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/data/models/refinements_model/refinements_model.dart';
import 'package:groceries/data/models/task_model/task_model.dart';
import 'package:groceries/data/models/user_model/user_model.dart';
import 'package:injectable/injectable.dart';

@singleton
class MyTasksDataSource {
  const MyTasksDataSource();

  // ignore: unused_element
  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  Future<List<TaskModel>> fetchMyTasks() async {
    final myTasks = [
      TaskModel(
        id: '123',
        dueDate: DateTime(2022, 3, 19),
        creationDate: DateTime.timestamp(),
        listModel: GroceryListModel(
          id: '123',
          name: 'Friends',
          imageUrl: '',
          members: <UserModel>[],
          items: <GroceryModel>[],
          creationDate: DateTime.timestamp(),
        ),
        groceries: [
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
      TaskModel(
        id: '123',
        dueDate: DateTime(2022, 3, 20),
        creationDate: DateTime.timestamp(),
        listModel: GroceryListModel(
          creationDate: DateTime.timestamp(),
          id: '123',
          name: 'Work',
          imageUrl: '',
          members: <UserModel>[],
          items: <GroceryModel>[],
        ),
        groceries: [
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
      TaskModel(
        id: '123',
        dueDate: DateTime(2022, 3, 21),
        creationDate: DateTime.timestamp(),
        listModel: GroceryListModel(
          id: '123',
          name: 'Home',
          imageUrl: '',
          members: <UserModel>[],
          items: <GroceryModel>[],
          creationDate: DateTime.timestamp(),
        ),
        groceries: [
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
    ]..sort((a, b) => b.dueDate?.compareTo(a.dueDate ?? DateTime.now()) ?? 0);
    Future.delayed(Durations.extralong4, () {
      return myTasks;
    });
    return myTasks;
  }

  Future<void> markTaskAsDone(TaskModel? task) {
    throw UnimplementedError('Hasnt been implemented yet.');
  }
}
