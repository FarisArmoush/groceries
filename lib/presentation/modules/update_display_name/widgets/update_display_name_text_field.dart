import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/update_display_name/cubit/update_display_name_cubit.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';

class UpdateDisplayNameTextField extends StatelessWidget {
  const UpdateDisplayNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateDisplayNameCubit, UpdateDisplayNameState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return AppTextField(
          labelText: 'New username',
          onChanged: (name) =>
              context.read<UpdateDisplayNameCubit>().nameChanged(name),
          errorText: state.name.displayError,
          validator: (value) => state.name.validator(value),
        );
      },
    );
  }
}
