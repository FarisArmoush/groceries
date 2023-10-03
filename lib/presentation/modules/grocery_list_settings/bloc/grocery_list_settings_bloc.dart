import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'grocery_list_settings_bloc.freezed.dart';
part 'grocery_list_settings_event.dart';
part 'grocery_list_settings_state.dart';

class GroceryListSettingsBloc
    extends Bloc<GroceryListSettingsEvent, GroceryListSettingsState> {
  GroceryListSettingsBloc() : super(const GroceryListSettingsState()) {
    on<_DeleteList>(_onDeleteList);
  }

  Future<void> _onDeleteList(
    _DeleteList event,
    Emitter<GroceryListSettingsState> emit,
  ) async {}
}
