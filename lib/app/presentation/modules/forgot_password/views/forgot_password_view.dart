import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/app/presentation/modules/forgot_password/cubit/forgot_password_cubit.dart';
import 'package:groceries/app/presentation/modules/forgot_password/widgets/forgot_password_form.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

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
