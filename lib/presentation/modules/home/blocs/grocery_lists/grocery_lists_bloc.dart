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
    emit(GroceryListsLoading());
    try {
      final lists = await _groceryListsUseCase.fetchMyGroceryLists();
      await Future.delayed(
        2.seconds,
        () {
          emit(
            GroceryListsLoaded(
              lists: lists,
            ),
          );
        },
      );
    } catch (e) {
      emit(
        GroceryListsFailed(
          error: e.toString(),
        ),
      );
    }
  }
}
