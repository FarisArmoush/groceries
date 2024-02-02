part of 'grocery_list_details_bloc.dart';

@freezed
class GroceryListDetailsState with _$GroceryListDetailsState {
  const factory GroceryListDetailsState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default(BlocStatus.initial()) BlocStatus addItemStatus,
    @Default(BlocStatus.initial()) BlocStatus removeItemStatus,
    @Default(BlocStatus.initial()) BlocStatus clearStatus,
    GroceryListDetailsModel? groceryListDetailsModel,
  }) = _GroceryListDetailsState;

  const GroceryListDetailsState._();
}
