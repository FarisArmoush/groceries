part of '../../home.dart';

class GroceryListsBloc extends Bloc<GroceryListsEvent, GroceryListsState> {
  GroceryListsBloc(this._groceryListsUseCase) : super(GroceryListsInitial()) {
    on<LoadGroceryLists>(_onLoadGroceryLists);
  }

  final GroceryListsUseCase _groceryListsUseCase;

  Future<void> _onLoadGroceryLists(
    LoadGroceryLists event,
    Emitter<GroceryListsState> emit,
  ) async {
    final lists = await _groceryListsUseCase.fetchMyGroceryLists();
    emit(
      GroceryListsLoaded(
        lists: lists,
      ),
    );
  }
}
