import 'package:groceries/domain/entities/grocery_list/grocery_list_entity.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class GroceryListsUseCase {
  const GroceryListsUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  Future<List<GroceryListEntity>?> call() async {
    final modelList = await _groceryListsRepository.fetchMyGroceryLists();
    final entityList = modelList.map((e) => e.toEntity()!).toList();
    return entityList;
  }
}
