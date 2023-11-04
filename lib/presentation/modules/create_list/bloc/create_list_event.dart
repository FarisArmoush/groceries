part of 'create_list_bloc.dart';

@freezed
class CreateListEvent with _$CreateListEvent {
  const factory CreateListEvent.createList({
    required GroceryListModel groceryListModel,
  }) = _CreateList;

  const factory CreateListEvent.nameChanged(String name) = _NameChanged;

  const factory CreateListEvent.iconChanged(String icon) = _IconChanged;

  const factory CreateListEvent.getIcons() = _GetIcons;
}
