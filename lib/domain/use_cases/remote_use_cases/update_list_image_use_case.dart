import 'package:groceries/domain/repositories/grocery_list_details_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class UpdateListImageUseCase extends FutureInputUseCase<String?> {
  UpdateListImageUseCase(this._repository);

  final GroceryListDetailsRepository _repository;
  @override
  Future<void> call(String? input) {
    return _repository.updateListImage(input);
  }
}
