part of '../grocery_list_settings.dart';

class GroceryListSettingsBloc
    extends Bloc<GroceryListSettingsEvent, GroceryListSettingsState> {
  GroceryListSettingsBloc() : super(GroceryListSettingsInitial()) {
    on<GroceryListSettingsEvent>((event, emit) {});
  }
}
