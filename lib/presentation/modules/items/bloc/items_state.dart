part of 'items_bloc.dart';

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(<GroceryModel>[]) List<GroceryModel> groceries,
  }) = _ItemsState;

  const ItemsState._();
}
