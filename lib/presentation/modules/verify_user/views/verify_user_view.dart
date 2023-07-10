import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/presentation/modules/verify_user/cubit/verify_user_cubit.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/verify_user_form.dart';

class VerifyUserView extends StatelessWidget {
  const VerifyUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyUserCubit(
        context.read<FirebaseAuthRepository>(),
      ),
      child: const VerifyUserForm(),
    );
  }
}
