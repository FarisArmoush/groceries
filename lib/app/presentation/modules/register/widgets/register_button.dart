import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:groceries/app/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/app/presentation/widgets/app_loading_indicator.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        if (state.status.isSubmissionInProgress) {
          return const AppLoadingIndicator();
        }
        return FilledButton(
          onPressed: () => state.status.isValidated
              ? context.read<RegisterCubit>().register()
              : null,
          child: const Text('Sign Up'),
        );
      },
    );
  }
}
