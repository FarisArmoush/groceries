import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/account_settings/bloc/account_settings_bloc.dart';
import 'package:groceries/presentation/modules/account_settings/widgets/account_settings_form.dart';

class AccountSettingsView extends StatelessWidget {
  const AccountSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountSettingsBloc(),
      child: const AccountSettingsForm(),
    );
  }
}
