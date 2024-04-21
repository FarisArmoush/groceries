import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateListUseCase {
  const CreateListUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  Future<void> call(GroceryListModel? input) async {
    return _groceryListsRepository.createGroceryList(input);
  }
}
