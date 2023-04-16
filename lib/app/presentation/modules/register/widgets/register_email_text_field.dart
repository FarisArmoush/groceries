import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';

class RegisterEmailTextField extends StatelessWidget {
  const RegisterEmailTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) {
        return previous.email != current.email;
      },
      builder: (context, state) {
        return AppTextField(
          onChanged: (email) {
            context.read<RegisterCubit>().emailChanged(email);
          },
          keyboardType: TextInputType.emailAddress,
          labelText: 'Email',
          validator: (value) => state.email.validator(value),
          errorText: state.email.error,
        );
      },
    );
  }
}
