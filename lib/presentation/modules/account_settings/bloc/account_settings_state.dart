part of 'account_settings_bloc.dart';

abstract class AccountSettingsState extends Equatable {
  const AccountSettingsState();
  
  @override
  List<Object> get props => [];
}

class AccountSettingsInitial extends AccountSettingsState {}
