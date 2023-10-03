part of 'grocery_lists_bloc.dart';

@freezed
class GroceryListsState with _$GroceryListsState {
  const factory GroceryListsState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(<GroceryListModel>[]) List<GroceryListModel> groceryLists,
  }) = _GroceryListsState;

  const GroceryListsState._();
}
