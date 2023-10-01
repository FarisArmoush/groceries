part of 'add_items_bloc.dart';

@freezed
class AddItemsEvent with _$AddItemsEvent {
  const factory AddItemsEvent.getParentCategories() = _GetParentCategories;
  
  const factory AddItemsEvent.addItemToList({
    required GroceryModel groceryModel,
    required String collectionPath,
  }) = _AddItemToList;

  const factory AddItemsEvent.setActiveCategory(String category) =
      _SetActiveCategory;

  const factory AddItemsEvent.getCategoryItems() = _GetCategoryItems;
}
