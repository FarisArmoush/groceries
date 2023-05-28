import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'grocery_list_settings_event.dart';
part 'grocery_list_settings_state.dart';

class GroceryListSettingsBloc
    extends Bloc<GroceryListSettingsEvent, GroceryListSettingsState> {
  GroceryListSettingsBloc() : super(GroceryListSettingsInitial()) {
    on<GroceryListSettingsEvent>((event, emit) {});
  }
}
