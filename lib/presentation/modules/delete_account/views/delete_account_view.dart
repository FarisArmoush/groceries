import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/presentation/modules/delete_account/cubit/delete_account_cubit.dart';
import 'package:groceries/presentation/modules/delete_account/widgets/delete_account_form.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DeleteAccountCubit(
        authRepo: context.read<FirebaseAuthRepository>(),
      ),
      child: const DeleteAccountForm(),
    );
  }
}
