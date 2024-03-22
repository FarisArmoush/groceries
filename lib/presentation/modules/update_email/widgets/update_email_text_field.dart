import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/update_email/bloc/update_email_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/utils/extenstions/hard_coded_extension.dart';

class UpdateEmailTextField extends StatelessWidget {
  const UpdateEmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateEmailBloc, UpdateEmailState>(
      buildWhen: (previous, current) => previous.email != current.email,
      builder: (context, state) {
        return AppTextField(
          labelText: 'New Email'.hardCoded,
          onChanged: (value) => context.read<UpdateEmailBloc>().add(
                UpdateEmailEvent.emailChanged(value),
              ),
          errorText: state.email.displayError,
          validator: (value) => state.email.validator(value),
        );
      },
    );
  }
}
