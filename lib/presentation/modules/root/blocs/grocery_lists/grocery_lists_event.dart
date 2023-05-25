part of 'grocery_lists_bloc.dart';

abstract class GroceryListsEvent extends Equatable {
  const GroceryListsEvent();

  @override
  List<Object> get props => [];
}

class LoadGroceryLists extends GroceryListsEvent {}

class LeaveGroceryList extends GroceryListsEvent {
  const LeaveGroceryList({required this.list});
  final GroceryListModel list;

  @override
  List<Object> get props => [list];
}
