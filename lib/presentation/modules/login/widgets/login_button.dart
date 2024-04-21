import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/modules/login/bloc/login_bloc.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      buildWhen: (previous, current) =>
          previous.isValid != current.isValid ||
          previous.status != current.status,
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.status.isInProgressOrSuccess,
          child: FilledButton(
            onPressed: state.isValid
                ? () => context.read<LoginBloc>()
                  ..add(const LoginEvent.submit())
                  ..add(const LoginEvent.dismissKeyboard())
                : null,
            child: state.status.isInProgressOrSuccess
                ? const ButtonsLoadingIndicator()
                : Text(Translations.login.login),
          ),
        );
      },
    );
  }
}
