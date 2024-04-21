import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/domain/repositories/base_groceries_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchCategoryItemsUseCase {
  const FetchCategoryItemsUseCase(this._baseGroceriesRepository);

  final BaseGroceriesRepository _baseGroceriesRepository;

  Future<List<GroceryModel>> call(String? input) {
    return _baseGroceriesRepository.fetchCategoryItems(input);
  }
}
