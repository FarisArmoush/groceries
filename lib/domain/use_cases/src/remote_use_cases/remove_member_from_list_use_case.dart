part of '../../use_cases.dart';

class RemoveMemberFromListUseCase extends FutureInputUseCase<UserModel?> {
  RemoveMemberFromListUseCase(this._groceryListsRepository);

  final GroceryListsRepository _groceryListsRepository;
  @override
  Future<void> call(UserModel? input) {
    return _groceryListsRepository.removeMember(input);
  }
}
