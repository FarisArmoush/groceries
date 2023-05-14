import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/presentation/modules/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:groceries/presentation/modules/forgot_password/widgets/forgot_password_form.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgotPasswordCubit(
        context.read<FirebaseAuthRepository>(),
      ),
      child: const ForgotPasswordForm(),
    );
  }
}
