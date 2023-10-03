part of 'add_items_bloc.dart';

@freezed
class AddItemsState with _$AddItemsState {
  const factory AddItemsState({
    @Default(<CategoryModel>[]) List<CategoryModel> categories,
    @Default(<GroceryModel>[]) List<GroceryModel> baseGroceries,
    @Default('All') String selectedCategory,
    @Default('Failed to get data. Try again later.') String error,
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _AddItemsState;

  const AddItemsState._();
}
