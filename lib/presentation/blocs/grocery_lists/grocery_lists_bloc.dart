import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:groceries/data/models/grocery_list_model/grocery_list_model.dart';
import 'package:groceries/domain/use_cases/remote_use_cases/grocery_lists_use_case.dart';
import 'package:groceries/presentation/common/bloc_status.dart';
import 'package:injectable/injectable.dart';

part 'grocery_lists_bloc.freezed.dart';
part 'grocery_lists_event.dart';
part 'grocery_lists_state.dart';

@injectable
class GroceryListsBloc extends Bloc<GroceryListsEvent, GroceryListsState> {
  GroceryListsBloc(this._groceryListsUseCase)
      : super(const GroceryListsState()) {
    on<GroceryListsEvent>(
      (event, emit) => event.map(
        getGroceryLists: (event) => _onGetGroceryLists(event, emit),
      ),
    );
  }
  final GroceryListsUseCase _groceryListsUseCase;

  Future<void> _onGetGroceryLists(
    _GetGroceryLists event,
    Emitter<GroceryListsState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BlocStatus.loading(),
      ),
    );
    try {
      final groceryLists = await _groceryListsUseCase.call();
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          groceryLists: groceryLists ?? [],
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: BlocStatus.failure(e.toString()),
        ),
      );
    }
  }
}
