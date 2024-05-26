import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/modules/login/bloc/login_bloc.dart';
import 'package:groceries/presentation/router/app_route.dart';
import 'package:groceries/presentation/widgets/other_options_text_button.dart';

class LoginOtherOptionsTextButton extends StatelessWidget {
  const LoginOtherOptionsTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.status.isInProgressOrSuccess,
          child: SwitchAuthenticationOptionTextButton(
            upperText: Translations.login.dontHaveAnAccount,
            lowerText: Translations.login.registerNow,
            onTap: () => context.pushReplacementNamed(AppRoute.register.named),
          ),
        );
      },
    );
  }
}
