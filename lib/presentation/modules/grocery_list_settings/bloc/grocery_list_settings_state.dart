part of 'grocery_list_settings_bloc.dart';

abstract class GroceryListSettingsState extends Equatable {
  const GroceryListSettingsState();
  
  @override
  List<Object> get props => [];
}

class GroceryListSettingsInitial extends GroceryListSettingsState {}
