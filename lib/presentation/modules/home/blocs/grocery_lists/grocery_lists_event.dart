part of '../../home.dart';

sealed class GroceryListsEvent extends Equatable {
  const GroceryListsEvent();

  @override
  List<Object> get props => [];
}

final class LoadGroceryLists extends GroceryListsEvent {}

final class LeaveGroceryList extends GroceryListsEvent {
  const LeaveGroceryList({required this.list});
  final GroceryListModel list;

  @override
  List<Object> get props => [list];
}
