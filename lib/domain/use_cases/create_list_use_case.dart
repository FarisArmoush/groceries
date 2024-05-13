import 'package:groceries/domain/entities/grocery_list/grocery_list_entity.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateListUseCase {
  const CreateListUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  Future<void> call(GroceryListEntity? input) async {
    return _groceryListsRepository.createGroceryList(input?.toModel());
  }
}
