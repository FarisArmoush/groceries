part of 'grocery_list_settings_bloc.dart';

@freezed
class GroceryListSettingsEvent with _$GroceryListSettingsEvent {
  const factory GroceryListSettingsEvent.deleteList() = _DeleteList;
}
