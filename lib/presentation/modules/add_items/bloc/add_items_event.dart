part of '../add_items.dart';

sealed class AddItemsEvent extends Equatable {
  const AddItemsEvent();

  @override
  List<Object> get props => [];
}

final class FetchBaseGroceries extends AddItemsEvent {}

final class AddItemToList extends AddItemsEvent {
  const AddItemToList({
    required this.groceryModel,
    required this.collectionPath,
  });

  final GroceryModel groceryModel;
  final String collectionPath;

  @override
  List<Object> get props => [groceryModel, collectionPath];
}

final class SetActiveCategory extends AddItemsEvent {
  const SetActiveCategory(this.category);

  final String category;
  @override
  List<Object> get props => [category];
}
