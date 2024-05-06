part of 'add_items_bloc.dart';

@freezed
class AddItemsState with _$AddItemsState {
  const factory AddItemsState({
    @Default(<CategoryEntity>[]) List<CategoryEntity> parentCategories,
    @Default(BlocStatus.initial()) BlocStatus status,
  }) = _AddItemsState;

  const AddItemsState._();
}
