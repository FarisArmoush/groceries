import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/app/presentation/modules/register/cubit/register_cubit.dart';
import 'package:groceries/app/presentation/widgets/app_text_field.dart';

class RegisterDisplayNameTextField extends StatelessWidget {
  const RegisterDisplayNameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterCubit, RegisterState>(
      buildWhen: (previous, current) {
        return previous.displayName != current.displayName;
      },
      builder: (context, state) {
        return AppTextField(
          onChanged: (name) =>
              context.read<RegisterCubit>().displayNameChanged(name),
          keyboardType: TextInputType.name,
          labelText: 'Username',
          errorText: state.displayName.error,
          validator: (value) => state.displayName.validator(value),
        );
      },
    );
  }
}
