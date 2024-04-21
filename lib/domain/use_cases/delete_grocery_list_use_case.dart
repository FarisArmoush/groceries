import 'package:groceries/domain/repositories/grocery_list_details_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class DeleteGroceryListUseCase {
  const DeleteGroceryListUseCase(this._repository);

  final GroceryListDetailsRepository _repository;

  Future<void> call(String? input) {
    return _repository.deleteGroceryList(input);
  }
}
