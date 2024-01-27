part of '../../use_cases.dart';

class FetchCategoryItemsUseCase
    extends FutureUseCase<String?, List<GroceryModel>?> {
  FetchCategoryItemsUseCase(this._baseGroceriesRepository);

  final BaseGroceriesRepository _baseGroceriesRepository;
  @override
  Future<List<GroceryModel>> call(String? input) {
    return _baseGroceriesRepository.fetchCategoryItems(input);
  }
}
