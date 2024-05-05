import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/modules/register/bloc/register_bloc.dart';
import 'package:groceries/presentation/widgets/other_options_text_button.dart';

class RegisterOtherOptionsTextButton extends StatelessWidget {
  const RegisterOtherOptionsTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(
      builder: (context, state) {
        return IgnorePointer(
          ignoring: state.status.isInProgressOrSuccess,
          child: SwitchAuthenticationOptionTextButton(
            upperText: Translations.register.alreadyHaveAnAccount,
            lowerText: Translations.register.loginNow,
            onTap: () => context.pushNamed(AppRoute.login.named),
          ),
        );
      },
    );
  }
}
