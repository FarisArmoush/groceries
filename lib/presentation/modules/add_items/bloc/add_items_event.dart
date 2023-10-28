part of 'add_items_bloc.dart';

@freezed
class AddItemsEvent with _$AddItemsEvent {
  const factory AddItemsEvent.getParentCategories() = _GetParentCategories;
}
