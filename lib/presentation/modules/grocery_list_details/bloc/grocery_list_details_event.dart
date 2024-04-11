part of 'grocery_list_details_bloc.dart';

@freezed
class GroceryListDetailsEvent with _$GroceryListDetailsEvent {
  const factory GroceryListDetailsEvent.getDetails({
    required String? uid,
  }) = _GetDetails;

  const factory GroceryListDetailsEvent.addItem({
    required String itemUid,
  }) = _AddItem;

  const factory GroceryListDetailsEvent.removeItem({
    required String itemUid,
  }) = _RemoveItem;

  const factory GroceryListDetailsEvent.clear({
    required String? uid,
  }) = _Clear;

  const factory GroceryListDetailsEvent.resetState() = _ResetState;
}
