part of '../update_display_name.dart';

class UpdateDisplayNameTextField extends StatelessWidget {
  const UpdateDisplayNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateDisplayNameBloc, UpdateDisplayNameState>(
      buildWhen: (previous, current) =>
          previous.displayName != current.displayName,
      builder: (context, state) {
        return AppTextField(
          labelText: 'New username',
          onChanged: (value) => context.read<UpdateDisplayNameBloc>().add(
                UpdateDisplayNameEvent.displayNameChanged(value),
              ),
          errorText: state.displayName.displayError,
          validator: (value) => state.displayName.validator(value),
        );
      },
    );
  }
}
