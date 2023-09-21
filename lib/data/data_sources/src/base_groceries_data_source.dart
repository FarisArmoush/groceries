part of '../data_sources.dart';

class BaseGroceriesDataSource {
  BaseGroceriesDataSource(this._firestore);

  // ignore: unused_field
  final FirebaseFirestore _firestore;

  Future<List<GroceryModel>> fetchAllGroceries() async {
    final list = <GroceryModel>[
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
    ]..sort((a, b) => a.name.compareTo(b.name));

    return list;
  }
}
