part of 'grocery_lists_bloc.dart';

@freezed
class GroceryListsEvent with _$GroceryListsEvent {
  const factory GroceryListsEvent.getGroceryLists() = _GetGroceryLists;
}
