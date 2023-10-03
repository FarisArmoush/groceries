part of 'create_list_bloc.dart';

@freezed
class CreateListEvent with _$CreateListEvent {
  const factory CreateListEvent.createList({
    required GroceryListModel groceryListModel,
  }) = _CreateList;
}
