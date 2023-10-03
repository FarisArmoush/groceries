import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/use_cases/use_cases.dart';
import 'package:groceries/presentation/common/bloc_status.dart';

part 'grocery_lists_event.dart';
part 'grocery_lists_state.dart';
part 'grocery_lists_bloc.freezed.dart';

class GroceryListsBloc extends Bloc<GroceryListsEvent, GroceryListsState> {
  GroceryListsBloc(this._groceryListsUseCase)
      : super(const GroceryListsState()) {
    on<_LoadGroceryLists>(_onLoadGroceryLists);
  }
  final GroceryListsUseCase _groceryListsUseCase;

  Future<void> _onLoadGroceryLists(
    _LoadGroceryLists event,
    Emitter<GroceryListsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    await _groceryListsUseCase
        .fetchMyGroceryLists()
        .then(
          (groceryLists) => emit(
            state.copyWith(
              status: const BlocStatus.success(),
              groceryLists: groceryLists,
            ),
          ),
        )
        .catchError(
          (Object? e) => emit(
            state.copyWith(
              status: BlocStatus.failure('$e'),
            ),
          ),
        );
  }
}
