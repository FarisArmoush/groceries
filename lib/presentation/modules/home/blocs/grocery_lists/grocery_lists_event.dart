part of '../../home.dart';

sealed class GroceryListsEvent extends Equatable {
  const GroceryListsEvent();

  @override
  List<Object> get props => [];
}

final class LoadGroceryLists extends GroceryListsEvent {}
