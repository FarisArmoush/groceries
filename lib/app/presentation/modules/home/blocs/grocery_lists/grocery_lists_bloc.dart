import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:groceries/app/data/models/list_model.dart';
import 'package:groceries/app/data/repositories/mock_repositories/mock_grocery_lists_repository.dart';
import 'package:groceries/app/domain/repositories/base_grocery_lists_repository.dart';

part 'grocery_lists_event.dart';
part 'grocery_lists_state.dart';

class GroceryListsBloc extends Bloc<GroceryListsEvent, GroceryListsState> {
  GroceryListsBloc() : super(GroceryListsInitial()) {
    final BaseGroceryListsRepository listsRepository =
        MockGroceryListsRepository();
    on<LoadGroceryLists>(
      (event, emit) async {
        await listsRepository.getLists();
        emit(
          GroceryListsLoaded(
            lists: listsRepository.lists,
          ),
        );
      },
    );
    on<LeaveGroceryList>(
      (event, emit) {
        if (state is GroceryListsLoaded) {
          emit(
            GroceryListsLoaded(
              lists: List.from(
                listsRepository.lists..remove(event.list),
              ),
            ),
          );
        }
      },
    );
  }
}
