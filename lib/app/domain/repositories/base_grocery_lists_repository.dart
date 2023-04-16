import 'package:groceries/app/data/models/list_model.dart';

abstract class BaseGroceryListsRepository {
  List<ListModel> get lists;
  Future<List<ListModel>> getLists();
}
