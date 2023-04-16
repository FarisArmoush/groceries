import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';

class RegisterConfirmPasswordTextField extends StatelessWidget {
  const RegisterConfirmPasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) {
        return previous.password != current.password ||
            previous.confirmedPassword != current.confirmedPassword;
      },
      builder: (context, state) {
        return AppTextField(
          onChanged: (confirmPassword) {
            context
                .read<RegisterCubit>()
                .confirmedPasswordChanged(confirmPassword);
          },
          obscureText: true,
          labelText: 'Repeat your password',
          validator: (value) => state.confirmedPassword.validator(value),
          errorText: state.confirmedPassword.error,
        );
      },
    );
  }
}
