import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';

class RegisterPasswordTextField extends StatelessWidget {
  const RegisterPasswordTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) => previous.password != current.password,
      builder: (context, state) {
        return AppTextField(
          obscureText: true,
          autofillHints: const [AutofillHints.password],
          keyboardType: TextInputType.visiblePassword,
          onChanged: (password) {
            context.read<RegisterCubit>().passwordChanged(password);
          },
          labelText: 'Password',
          errorText: state.password.error,
        );
      },
    );
  }
}
