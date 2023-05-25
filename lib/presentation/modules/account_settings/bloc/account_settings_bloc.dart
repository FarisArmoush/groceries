import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'account_settings_event.dart';
part 'account_settings_state.dart';

class AccountSettingsBloc
    extends Bloc<AccountSettingsEvent, AccountSettingsState> {
  AccountSettingsBloc() : super(AccountSettingsInitial()) {
    on<AccountSettingsEvent>((event, emit) {});
  }
}
