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
    on<GetParentCategories>(_onGetParentCategories);
    on<AddItemToList>(_onAddItemToList);
    on<SetActiveCategory>(_onSetActiveCategory);
  }

  final BaseGroceriesUseCase _baseGroceriesUseCase;

  Future<void> _onAddItemToList(
    AddItemToList event,
    Emitter<AddItemsState> emit,
  ) async {}

  Future<void> _onGetParentCategories(
    GetParentCategories event,
    Emitter<AddItemsState> emit,
  ) async {
    emit(
      state.copyWith(
        addItemsStates: AddItemsStatus.loading,
      ),
    );
    try {
      final myCategories = await _baseGroceriesUseCase.fetchAllCategories();
      final baseGroceries = await _baseGroceriesUseCase.fetchAllBaseGroceries();
      emit(
        state.copyWith(
          addItemsStates: AddItemsStatus.success,
          baseGroceries: baseGroceries,
          categories: myCategories,
        ),
      );
    } on FirebaseException catch (e) {
      emit(
        state.copyWith(
          addItemsStates: AddItemsStatus.error,
          error: e.message,
        ),
      );
    } catch (_) {
      emit(
        state.copyWith(
          addItemsStates: AddItemsStatus.error,
          error: _.toString(),
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
