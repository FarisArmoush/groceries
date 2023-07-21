import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/modules/update_email/cubit/update_email_cubit.dart';
import 'package:groceries/presentation/modules/update_email/widgets/update_email_form.dart';

class UpdateEmailView extends StatelessWidget {
  const UpdateEmailView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateEmailCubit(
        context.read<AuthBloc>().authRepo,
      ),
      child: const UpdateEmailForm(),
    );
  }
}
