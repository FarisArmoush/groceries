part of 'grocery_lists_bloc.dart';

abstract class GroceryListsState extends Equatable {
  const GroceryListsState();

  @override
  List<Object> get props => [];
}

class GroceryListsInitial extends GroceryListsState {}

class GroceryListsLoaded extends GroceryListsState {
  const GroceryListsLoaded({required this.lists});
  final List<ListModel> lists;

  @override
  List<Object> get props => [lists];
}
