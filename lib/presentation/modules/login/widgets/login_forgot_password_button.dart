import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:groceries/config/localization/app_translations.dart';
import 'package:groceries/config/routes/app_route.dart';
import 'package:groceries/presentation/modules/login/bloc/login_bloc.dart';

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
                AppTranslations.forgotPassword.header,
              ),
              onPressed: () => context.pushNamed(AppRoute.forgotPassword.name),
            ),
          ],
        ),
      ),
    );
  }
}
