import 'package:groceries/domain/entities/grocery_list_details/grocery_list_details_entity.dart';
import 'package:groceries/domain/repositories/grocery_list_details_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchGroceryListDetailsUseCase {
  const FetchGroceryListDetailsUseCase(this._repository);

  final GroceryListDetailsRepository _repository;

  Future<GroceryListDetailsEntity?> call(String? input) async {
    final model = await _repository.fetchDetails(input);
    return model?.toEntity();
  }
}
