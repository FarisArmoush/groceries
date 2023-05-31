import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/data/repositories/firebase_auth_repository.dart';
import 'package:groceries/presentation/modules/update_display_name/widgets/update_display_name_form.dart';
import 'package:groceries/presentation/modules/update_password/cubit/update_password_cubit.dart';

class UpdatePasswordView extends StatelessWidget {
  const UpdatePasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdatePasswordCubit(
        context.read<FirebaseAuthRepository>(),
      ),
      child: const UpdateDisplayNameForm(),
    );
  }
}
