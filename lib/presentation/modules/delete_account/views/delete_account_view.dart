import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/modules/delete_account/cubit/delete_account_cubit.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_form.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DeleteAccountCubit>(
      create: (context) => DeleteAccountCubit(
        authRepo: context.read<AuthBloc>().authRepo,
      ),
      child: const DeleteAccountForm(),
    );
  }
}
