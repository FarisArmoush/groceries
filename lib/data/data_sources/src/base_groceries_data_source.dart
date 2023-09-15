part of '../data_sources.dart';

class BaseGroceriesDataSource {
  Future<List<GroceryModel>> fetchAllGroceries() async {
    final list = <GroceryModel>[
      const GroceryModel(
        id: '1235',
        name: 'Chicken',
        category: 'Eggs & Dairy',
        notes: '',
        imageUrl: '',
      ),
      const GroceryModel(
        id: '12123134252346412343',
        name: 'Carrots',
        category: 'Fruits & Vegetables',
        notes: '5 big ones',
        imageUrl: '',
      ),
      const GroceryModel(
        id: '12323462346324645',
        name: 'Leave in conditioner',
        category: 'Health Care',
        notes: '',
        imageUrl: '',
      ),
      const GroceryModel(
        id: '12343246234623465',
        name: 'Cheese',
        category: 'Eggs & Dairy',
        notes: '',
        imageUrl: '',
      ),
      const GroceryModel(
        id: '12234623462346345',
        name: 'Hair Oil',
        category: 'Health Care',
        notes: '',
        imageUrl: '',
      ),
      const GroceryModel(
        id: '122346234623462346345',
        name: 'Eggplants',
        category: 'Fruits & Vegetables',
        notes: '',
        imageUrl: '',
      ),
      const GroceryModel(
        id: '1234123412341234123412341234',
        name: 'Fake Tulip',
        category: 'Household',
        notes: '',
        imageUrl: '',
        isDone: true,
      ),
    ]..sort((a, b) => a.category.compareTo(b.category));

    return list;
  }
}
