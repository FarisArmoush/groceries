import 'package:groceries/data/models/grocery_model/grocery_model.dart';
import 'package:groceries/domain/repositories/base_groceries_repository.dart';
import 'package:groceries/domain/use_cases/app_use_cases.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchCategoryItemsUseCase
    extends FutureUseCase<String?, List<GroceryModel>?> {
  FetchCategoryItemsUseCase(this._baseGroceriesRepository);

  final BaseGroceriesRepository _baseGroceriesRepository;
  @override
  Future<List<GroceryModel>> call(String? input) {
    return _baseGroceriesRepository.fetchCategoryItems(input);
  }
}
