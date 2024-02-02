import 'package:groceries/domain/repositories/grocery_list_details_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';

class RemoveMemberFromListUseCase extends FutureInputUseCase<String?> {
  RemoveMemberFromListUseCase(this._repository);

  final GroceryListDetailsRepository _repository;
  @override
  Future<void> call(String? input) {
    return _repository.removeMember(input);
  }
}
