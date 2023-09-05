part of '../../home.dart';

abstract class GroceryListsState extends Equatable {
  const GroceryListsState();

  @override
  List<Object> get props => [];
}

class GroceryListsInitial extends GroceryListsState {}

class GroceryListsLoaded extends GroceryListsState {
  const GroceryListsLoaded({required this.lists});
  final List<GroceryListModel> lists;

  @override
  List<Object> get props => [lists];
}

class GroceryListsFailed extends GroceryListsState {
  const GroceryListsFailed({required this.error});
  final String error;

  @override
  List<Object> get props => [error];
}

class GroceryListsLoading extends GroceryListsState {}
