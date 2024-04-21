import 'package:groceries/data/models/grocery_list_details_model/grocery_list_details_model.dart';
import 'package:groceries/domain/repositories/grocery_list_details_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchGroceryListDetailsUseCase {
  const FetchGroceryListDetailsUseCase(this._repository);

  final GroceryListDetailsRepository _repository;

  Future<GroceryListDetailsModel?> call(String? input) {
    return _repository.fetchDetails(input);
  }
}
