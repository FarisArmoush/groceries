part of 'items_bloc.dart';

@freezed
class ItemsState with _$ItemsState {
  const factory ItemsState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(<GroceryEntity>[]) List<GroceryEntity> groceries,
  }) = _ItemsState;

  const ItemsState._();
}
