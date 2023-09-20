part of '../add_items.dart';

class AddItemsBloc extends Bloc<AddItemsEvent, AddItemsState> {
  // AddItemsBloc(this._baseGroceriesUseCase)
  AddItemsBloc(this._fetchCategoriesUseCase, this._baseGroceriesUseCase)
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

  final FetchCategoriesUseCase _fetchCategoriesUseCase;

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
      final myCategories = await _fetchCategoriesUseCase.fetchCategories();
      final baseGroceries = await _baseGroceriesUseCase.fetchAllBaseGroceries();
      emit(
        state.copyWith(
          addItemsStates: AddItemsStatus.success,
          baseGroceries: baseGroceries,
          categories: myCategories,
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
