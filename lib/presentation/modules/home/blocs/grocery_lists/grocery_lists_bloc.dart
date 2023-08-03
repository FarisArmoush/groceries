part of '../../home.dart';

class GroceryListsBloc extends Bloc<GroceryListsEvent, GroceryListsState> {
  GroceryListsBloc() : super(GroceryListsInitial()) {
    on<LoadGroceryLists>(_onLoadGroceryLists);
    on<LeaveGroceryList>(_onLeaveGroceryList);
  }
  final GroceryListsRepository listsRepository = MockGroceryListsRepository();

  Future<void> _onLeaveGroceryList(
    LeaveGroceryList event,
    Emitter<GroceryListsState> emit,
  ) async {
    if (state is GroceryListsLoaded) {
      emit(
        GroceryListsLoaded(
          lists: List.from(
            listsRepository.lists..remove(event.list),
          ),
        ),
      );
    }
  }

  Future<void> _onLoadGroceryLists(
    LoadGroceryLists event,
    Emitter<GroceryListsState> emit,
  ) async {
    await listsRepository.fetchMyGroceryLists();
    emit(
      GroceryListsLoaded(
        lists: listsRepository.lists,
      ),
    );
  }
}
