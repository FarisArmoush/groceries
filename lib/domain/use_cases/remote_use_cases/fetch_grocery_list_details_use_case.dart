import 'package:groceries/data/models/grocery_list_details_model/grocery_list_details_model.dart';
import 'package:groceries/domain/repositories/grocery_list_details_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchGroceryListDetailsUseCase
    extends FutureUseCase<String?, GroceryListDetailsModel?> {
  FetchGroceryListDetailsUseCase(this._repository);

  final GroceryListDetailsRepository _repository;
  @override
  Future<GroceryListDetailsModel?> call(String? input) {
    return _repository.fetchDetails(input);
  }
}
