import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:groceries/presentation/modules/update_display_name/bloc/update_display_name_bloc.dart';
import 'package:groceries/presentation/widgets/app_text_field.dart';
import 'package:groceries/utils/extenstions/hard_coded_extension.dart';

class UpdateDisplayNameTextField extends StatelessWidget {
  const UpdateDisplayNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateDisplayNameBloc, UpdateDisplayNameState>(
      buildWhen: (previous, current) =>
          previous.displayName != current.displayName ||
          previous.status != current.status,
      builder: (context, state) {
        return AppTextField(
          labelText: 'New username'.hardCoded,
          errorText: state.displayName.displayError,
          validator: (value) => state.displayName.validator(value),
          onChanged: (value) => context.read<UpdateDisplayNameBloc>().add(
                UpdateDisplayNameEvent.displayNameChanged(value),
              ),
          onFieldSubmitted: (_) => state.isValid
              ? () => context.read<UpdateDisplayNameBloc>().add(
                    const UpdateDisplayNameEvent.submit(),
                  )
              : null,
        );
      },
    );
  }
}
