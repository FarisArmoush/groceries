import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/update_email/cubit/update_email_cubit.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class UpdateEmailTextField extends StatelessWidget {
  const UpdateEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateEmailCubit, UpdateEmailState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          labelText: 'New Email',
          onChanged: (email) =>
              context.read<UpdateEmailCubit>().emailChanged(email),
          errorText: state.email.displayError,
          validator: (value) => state.email.validator(value),
        );
      },
    );
  }
}
