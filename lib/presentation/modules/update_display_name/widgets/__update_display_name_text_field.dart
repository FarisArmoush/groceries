part of 'update_display_name_form.dart';

class _UpdateDisplayNameTextField extends StatelessWidget {
  const _UpdateDisplayNameTextField();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateDisplayNameCubit, UpdateDisplayNameState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return AppTextField(
          labelText: 'New username',
          onChanged: (name) =>
              context.read<UpdateDisplayNameCubit>().nameChanged(name),
          errorText: state.name.error,
          validator: (value) => state.name.validator(value),
        );
      },
    );
  }
}
