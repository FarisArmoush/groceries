import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:groceries/data/data_sources/interfaces/my_tasks_data_source.dart';
import 'package:groceries/data/models/grocery/grocery_model.dart';
import 'package:groceries/data/models/grocery_list/grocery_list_model.dart';
import 'package:groceries/data/models/refinements/refinements_model.dart';
import 'package:groceries/data/models/task/task_model.dart';
import 'package:groceries/data/models/user/user_model.dart';
import 'package:injectable/injectable.dart';

@named
@Injectable(as: MyTasksDataSource)
class MockMyTasksDataSource implements MyTasksDataSource {
  const MockMyTasksDataSource();

  // ignore: unused_element
  FirebaseFirestore get _firestore => FirebaseFirestore.instance;

  @override
  Future<List<TaskModel>> fetchMyTasks() async {
    final myTasks = [
      TaskModel(
        id: '123',
        dueDate: DateTime(2022, 3, 19),
        creationDate: DateTime.timestamp(),
        listModel: GroceryListModel(
          id: '123',
          name: 'Friends',
          imageUrl: faker.image.image(),
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
          imageUrl: faker.image.image(),
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
          imageUrl: faker.image.image(),
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

  @override
  Future<void> markTaskAsDone(TaskModel? task) {
    throw UnimplementedError('Hasnt been implemented yet.');
  }
}
