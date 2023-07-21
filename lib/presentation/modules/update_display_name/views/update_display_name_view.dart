import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/blocs/auth/auth_bloc.dart';
import 'package:groceries/presentation/modules/update_display_name/cubit/update_display_name_cubit.dart';
import 'package:groceries/presentation/modules/update_display_name/widgets/update_display_name_form.dart';

class UpdateDisplayNameView extends StatelessWidget {
  const UpdateDisplayNameView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UpdateDisplayNameCubit(
        context.read<AuthBloc>().authRepo,
      ),
      child: const UpdateDisplayNameForm(),
    );
  }
}
