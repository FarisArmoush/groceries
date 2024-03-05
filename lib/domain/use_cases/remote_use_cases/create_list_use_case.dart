import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class CreateListUseCase extends FutureInputUseCase<GroceryListModel?> {
  const CreateListUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;

  @override
  Future<void> call(GroceryListModel? input) async {
    return _groceryListsRepository.createGroceryList(input);
  }
}
