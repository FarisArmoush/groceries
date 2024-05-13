import 'package:groceries/domain/entities/grocery/grocery_entity.dart';
import 'package:groceries/domain/repositories/base_groceries_repository.dart';
import 'package:injectable/injectable.dart';

@injectable
class FetchCategoryItemsUseCase {
  const FetchCategoryItemsUseCase(this._baseGroceriesRepository);

  final BaseGroceriesRepository _baseGroceriesRepository;

  Future<List<GroceryEntity>> call(String? input) async {
    final modelList = await _baseGroceriesRepository.fetchCategoryItems(input);
    final entityList = modelList.map((e) => e.toEntity()).toList();
    return entityList;
  }
}
