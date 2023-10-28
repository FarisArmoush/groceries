part of 'add_items_bloc.dart';

@freezed
class AddItemsState with _$AddItemsState {
  const factory AddItemsState({
    @Default(<CategoryModel>[]) List<CategoryModel> parentCategories,
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _AddItemsState;

  const AddItemsState._();
}
