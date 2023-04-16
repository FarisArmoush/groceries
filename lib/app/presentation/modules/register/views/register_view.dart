import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/app/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/app/presentation/modules/register/widgets/register_form.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(
            size.height * 0.05,
          ),
          child: AppBar(
            scrolledUnderElevation: 0,
          ),
        ),
        body: BlocProvider(
          create: (context) => RegisterCubit(
            context.read<FirebaseAuthRepository>(),
          ),
          child: const RegisterForm(),
        ),
      ),
    );
  }
}
