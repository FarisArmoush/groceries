import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/modules/verify_user/cubit/verify_user_cubit.dart';
import 'package:groceries/presentation/modules/verify_user/widgets/verify_user_form.dart';

class VerifyUserView extends StatelessWidget {
  const VerifyUserView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VerifyUserCubit>(
      create: (context) => VerifyUserCubit(
        context.read<AuthBloc>().authenticationRepository,
      ),
      child: const VerifyUserForm(),
    );
  }
}
