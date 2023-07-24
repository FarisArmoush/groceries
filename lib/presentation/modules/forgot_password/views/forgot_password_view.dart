import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/modules/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_form.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ForgotPasswordCubit>(
      create: (context) => ForgotPasswordCubit(
        context.read<AuthBloc>().authRepo,
      ),
      child: const ForgotPasswordForm(),
    );
  }
}
