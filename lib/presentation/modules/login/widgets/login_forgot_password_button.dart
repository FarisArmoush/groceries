import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/translations.dart';
import 'package:groceries/presentation/modules/login/bloc/login_bloc.dart';
import 'package:groceries/presentation/router/app_route.dart';

class LoginForgotPasswordButton extends StatelessWidget {
  const LoginForgotPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) => IgnorePointer(
        ignoring: state.status.isInProgressOrSuccess,
        child: Row(
          children: [
            const Spacer(),
            TextButton(
              child: Text(
                Translations.forgotPassword.header,
              ),
              onPressed: () => context.pushNamed(AppRoute.forgotPassword.named),
            ),
          ],
        ),
      ),
    );
  }
}
