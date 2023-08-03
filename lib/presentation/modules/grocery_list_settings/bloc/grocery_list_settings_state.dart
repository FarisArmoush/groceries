part of '../grocery_list_settings.dart';

sealed class GroceryListSettingsState extends Equatable {
  const GroceryListSettingsState();

  @override
  List<Object> get props => [];
}

final class GroceryListSettingsInitial extends GroceryListSettingsState {}
