import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/data/repositories/mock_repositories/mock_grocery_lists_repository.dart';
import 'package:groceries/domain/repositories/grocery_lists_repository.dart';

part 'grocery_lists_event.dart';
part 'grocery_lists_state.dart';

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
