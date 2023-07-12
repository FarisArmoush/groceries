import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/presentation/modules/login/cubit/login_cubit.dart';
import 'package:groceries/presentation/widgets/buttons_loading_indicator.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        if (state.status.isInProgress) {
          // An untapable button with a loading indicator.
          return IgnorePointer(
            child: FilledButton.icon(
              onPressed: () {},
              icon: const ButtonsLoadingIndicator(),
              label: Text(AppTranslations.login),
            ),
          );
        }
        return FilledButton(
          onPressed:
              state.isValid ? () => context.read<LoginCubit>().login() : null,
          child: Text(AppTranslations.login),
        );
      },
    );
  }
}
