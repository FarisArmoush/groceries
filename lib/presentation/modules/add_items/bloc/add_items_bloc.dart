part of '../add_items.dart';

class AddItemsBloc extends Bloc<AddItemsEvent, AddItemsState> {
  AddItemsBloc(this._baseGroceriesUseCase)
      : super(
          const AddItemsState(
            status: AddItemsStatus.initial,
            baseGroceries: [],
            categories: [],
            selectedCategory: 'All',
          ),
        ) {
    on<FetchBaseGroceries>(_onFetchAllItems);
    on<AddItemToList>(_onAddItemToList);
    on<SetActiveCategory>(_onSetActiveCategory);
  }

  final BaseGroceriesUseCase _baseGroceriesUseCase;

  Future<void> _onAddItemToList(
    AddItemToList event,
    Emitter<AddItemsState> emit,
  ) async {}

  Future<void> _onFetchAllItems(
    FetchBaseGroceries event,
    Emitter<AddItemsState> emit,
  ) async {
    emit(
      state.copyWith(
        addItemsStates: AddItemsStatus.loading,
      ),
    );
    try {
      final baseGroceries = await _baseGroceriesUseCase.fetchAllBaseGroceries();
      final categories = <String>{};
      for (final element in baseGroceries) {
        categories.add(element.category);
      }
      emit(
        state.copyWith(
          addItemsStates: AddItemsStatus.success,
          baseGroceries: baseGroceries,
          categories: ['All', ...categories],
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          addItemsStates: AddItemsStatus.error,
        ),
      );
    }
  }

  void _onSetActiveCategory(
    SetActiveCategory event,
    Emitter<AddItemsState> emit,
  ) {
    emit(
      state.copyWith(
        selectedCategory: event.category,
      ),
    );
  }
}
