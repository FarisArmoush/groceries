part of '../repositories.dart';

class BaseGroceriesRepositoryImpl extends BaseGroceriesRepository {
  BaseGroceriesRepositoryImpl(this._groceriesDataSource);

  final BaseGroceriesDataSource _groceriesDataSource;

  @override
  Future<List<GroceryModel>> fetchAllBaseGroceries() async {
    try {
      final response = await _groceriesDataSource.fetchAllGroceries();
      final groceries = <GroceryModel>[];
      for (final grocery in response) {
        groceries.add(GroceryModel.fromJson(grocery));
      }
      log(
        groceries.toString(),
        name: toString(),
      );
      return groceries;
    } on FirebaseException catch (e) {
      log(e.message.toString(), name: 'FirebaseException');
    } on FormatException catch (e) {
      log(e.message, name: 'FormatException');
    } catch (e) {
      log(e.toString(), name: 'asdasdasdasd');
    }
    return [];
  }

  @override
  Future<void> addGroceryToList(GroceryModel groceryModel) {
    throw UnimplementedError();
  }
}
