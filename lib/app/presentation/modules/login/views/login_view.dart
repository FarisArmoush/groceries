import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/app/presentation/modules/login/cubit/login_cubit.dart';
import 'package:groceries/app/presentation/modules/login/widgets/login_form.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => LoginCubit(
          context.read<FirebaseAuthRepository>(),
        ),
        child: const LoginForm(),
      ),
    );
  }
}
