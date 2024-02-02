import 'package:groceries/domain/repositories/grocery_list_details_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';

class RemoveItemFromListUseCase extends FutureInputUseCase<String?> {
  RemoveItemFromListUseCase(this._repository);

  final GroceryListDetailsRepository _repository;

  @override
  Future<void> call(String? input) {
    return _repository.removeItem(input);
  }
}
