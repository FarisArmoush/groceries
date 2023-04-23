import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/app/presentation/modules/login/cubit/login_cubit.dart';
import 'package:groceries/app/presentation/widgets/app_loading_indicator.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status.isSubmissionInProgress) {
          return const AppLoadingIndicator();
        }
        return FilledButton(
          onPressed: () => state.status.isValidated
              ? context.read<LoginCubit>().login()
              : null,
          child: const Text('Login'),
        );
      },
    );
  }
}
